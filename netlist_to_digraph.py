#/usr/bin/python
'''
    author: luyongjie
    descrption:
        parse the netlist with Regular Expression.
        primary input, gate are abstracted as node. 
        directed acylic graph is stored as Adjacency List.

    ps: primary input is not always needed to be treated as node.
'''

import re
from node import node
from linkedlist import linkedlist
import pickle

def myparser(data,input_list,output_list,wire_list):
    #new parser modified @190308
    local_input_list = re.search("input (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")
    local_output_list = re.search("output (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")
    local_wire_list = re.search("wire (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")

    not_gate_tuple = re.findall("inv1\s*(.*?)\(\.a\((.*?)\).*?\.O\((.*?)\)\);", data, re.DOTALL)
    nor2_gate_tuple = re.findall("nor2\s*(.*?)\(\.a\((.*?)\).*?\.b\((.*?)\).*?\.O\((.*?)\)\);", data, re.DOTALL)
    buf_tuple = re.findall("buffer\s*(.*?)\(\.a\((.*?)\).*?\.O\((.*?)\)\);" , data, re.DOTALL)
    zero_tuple = re.findall("zero\s*(.*?)\(.O\((.*?)\)\);" , data, re.DOTALL)

    #because buf's output is directly connected to the primary input, 
    #those PO don't need to be mapped and removed from the output_list.
    not_nor2_input_list = [item[1] for item in not_gate_tuple]
    not_nor2_input_list.extend([item[1] for item in nor2_gate_tuple])
    not_nor2_input_list.extend([item[2] for item in nor2_gate_tuple])
    for item in buf_tuple:
        temp_str = "".join(item[1].replace(" ","")) #because in generate_netlist(): 
                                                        #replacement of "\\" and "-" brings extra " " in the buffer line
        if temp_str in not_nor2_input_list: #if buf's input isn't inv or nor2's input, remove it from the input_list
            pass
        else:
            try:
                local_input_list.remove(temp_str)
            except ValueError as e:
                print "In myparser(): ", e, item[1]

        try:
            local_output_list.remove(item[2])
        except ValueError as e:
            print e,item[2]
    
    for item in zero_tuple:#[(gate_name, output_var),]
        local_output_list.remove(item[1])

    input_list.extend(local_input_list)
    output_list.extend(local_output_list)
    wire_list.extend(local_wire_list)
    #return
    #return not_gate_tuple, nor2_gate_tuple
    
    #20191212 modified by sth 
    return not_gate_tuple, nor2_gate_tuple, input_list, output_list, wire_list

def create_adjacency_list(filename):
    #print "in create_adjacency_list ..."
    ##### data structure begin ######
    adjacency_list = []  #not neccessary
    
    desc_startpoint_dict = {} #key: gateID, value: output wire variable, assume one gate has only one output
    desc_endpoint_dict = {} # key: wire variable, value: ID of gates those use key as input
                        # value is stored as a <list> , because there might exist fanout.
    
    prev_startpoint_dict = {}
    prev_endpoint_dict = {}

    input_list = [] # primary input
    output_list = [] # primary output
    wire_list = [] # interconnected wire
    not_gate_list = []
    nor2_gate_list = []
    ###### data structure end ######

    fread = open(filename,'r')
    data = fread.read()
    not_gate_tuple, nor2_gate_tuple =myparser(data,input_list,output_list,wire_list)

    for item in not_gate_tuple:
        not_gate_list.append(item[0])

    for item in nor2_gate_tuple:
        nor2_gate_list.append(item[0])    

    #map to number
    #use vertex_list.index(some_vertex_name)  to obtain some_vertex_name's internal ID
    vertex_list  = input_list + not_gate_list + nor2_gate_list  #modified @190311

    ###################################################################
    #startpoint_dict issue
    #internal wire might be used as a primary output
    ### added @190311 ###
    for item in input_list:
        item_index = vertex_list.index(item)
        desc_startpoint_dict.update({item_index:item})
        prev_startpoint_dict.update({item:item_index})
    #####################

    for item in not_gate_tuple:  # not_gate_tuple  = [ ( gate_name,input_wire,output_wire), ... ]
        item_index = vertex_list.index(item[0])
        desc_startpoint_dict.update({item_index:item[2]})
        prev_startpoint_dict.update({item[2]:item_index})

    for item in nor2_gate_tuple: # nor2_gate_tuple = [ ( gate_name, input_wire1, input_wire2, output_wire), ... ] 
        item_index = vertex_list.index(item[0])
        desc_startpoint_dict.update({item_index:item[3]})
        prev_startpoint_dict.update({item[3]:item_index})

    #desc_endpoint_dict issue
    for item in not_gate_tuple:
        item_index = vertex_list.index(item[0])
        input_wire = item[1]
        if desc_endpoint_dict.has_key(input_wire):
            desc_endpoint_dict[input_wire].append(item_index)
        else:
            desc_endpoint_dict[input_wire] = []
            desc_endpoint_dict[input_wire].append(item_index)

    for item in nor2_gate_tuple:
        item_index =  vertex_list.index(item[0])
        input_wire_list = [item[1],item[2]]
        for input_wire in input_wire_list:
            if desc_endpoint_dict.has_key(input_wire):
                desc_endpoint_dict[input_wire].append(item_index)
            else:
                desc_endpoint_dict[input_wire] = []
                desc_endpoint_dict[input_wire].append(item_index)    

    #prev_endpoint_dict issue
    for item in not_gate_tuple:
        item_index = vertex_list.index(item[0])
        input_wire = item[1]
        prev_endpoint_dict[item_index] = [input_wire]

    for item in nor2_gate_tuple:
        item_index = vertex_list.index(item[0])
        input_wire_list = [ item[1], item[2]]
        prev_endpoint_dict[item_index] = input_wire_list

    ###################################################################
    #create adjacency_list
    vertex_number = len(vertex_list)
    adjacency_list = [None]*vertex_number

    for vertex_index in range(vertex_number):
        if not adjacency_list[vertex_index]:
            init_gname = vertex_list[vertex_index] 
            if init_gname in not_gate_list: 
                init_gtype = 1
            elif init_gname in nor2_gate_list:
                init_gtype = 2
            else:
                init_gtype = None # may be primary input.
                pass

            llist = linkedlist(nodeID = vertex_index,gtype = init_gtype,gname = init_gname )
            adjacency_list[vertex_index] = llist

        #obtain descendant adjacent node
        if not desc_startpoint_dict.has_key(vertex_index):
            pass
        else:
            startpoint_output_wire = desc_startpoint_dict[vertex_index]
            
            if not desc_endpoint_dict.has_key(startpoint_output_wire):# the output is primary output
                pass
            else:
                for adjacent_node_index in desc_endpoint_dict[startpoint_output_wire]:
                    new_node = node(current_nodeID= adjacent_node_index, adjacent_node= None)
                    adjacency_list[vertex_index].append_head_node(new_node)

        #obtain previous  adjacent node
        if not prev_endpoint_dict.has_key(vertex_index):
            pass
        else:
            input_wire_list = prev_endpoint_dict[vertex_index]
            for input_wire in input_wire_list:
                if not prev_startpoint_dict.has_key(input_wire): #the input is primary input
                    pass
                else:
                    new_node = node(current_nodeID = prev_startpoint_dict[input_wire],\
                                            adjacent_node= None)
                    adjacency_list[vertex_index].append_tail_node(new_node)

    return adjacency_list, vertex_list, input_list,output_list,not_gate_tuple, nor2_gate_tuple
    ####################### function create_adjacency_list() ends ##############################

def main():
    ###################################################################
    filename = "./abc_toy/netlist/full_adder_1bit.v"
    adjacency_list, vertex_list, input_list,output_list, not_gate_tuple, nor2_gate_tuple = create_adjacency_list(filename)

    vertex_number = len(adjacency_list)

    #debug myparser
    #input_list = list()
    #output_list = list()
    #wire_list = list()
    #fread = open(filename,'r')
    #data = fread.read()
    #not_gate_tuple, nor2_gate_tuple =myparser(data,input_list,output_list,wire_list)
    #print input_list
    #print "*"*30
    #print output_list

    print "traverse"
    for i in range(vertex_number):
        adjacency_list[i].traverse_head()
        adjacency_list[i].traverse_tail()
    
    for i in range(vertex_number):
        print "indegree of NO.%d vertex %s is %d"%(i,adjacency_list[i].gname,adjacency_list[i].get_indegree())
        print "outdegree of NO.%d vertex %s is %d"%(i,adjacency_list[i].gname,adjacency_list[i].get_outdegree())
        print
    
    print "vertex_list listed below: "
    print "gate name    gateID      type"
    for i in range(len(vertex_list)):
        print "%s,          %d,         %s,         %d,         %d"%(adjacency_list[i].gname,i,adjacency_list[i].gtype, adjacency_list[i].get_indegree(), adjacency_list[i].get_outdegree(),)
    ###################################################################
    #write to pickle file
    #fwrite = open("adjacency_list.pkl",'w')
    #pickle.dump(adjacency_list, fwrite)
    #fwrite.close()


if __name__ == '__main__':
    main()
