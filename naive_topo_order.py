'''
    author: luyogjie
    description:
        parse the netlist file, obtain topological ordered list.
        Usage of this module is as shown in the function main().
'''
from collections import deque
import re

def naive_topo_order(filename,vertex_list):
    f = open(filename,"r")
    data = f.read()
    tmplist = re.findall(".*?(g\d*)\(.a\(.*?\).*?\)",data,re.DOTALL)
    f.close()

    #print tmplist
    scheduled_list = list()
    for tmp_item in tmplist:
        try:
            tmp_index = vertex_list.index(tmp_item)
            scheduled_list.append(tmp_index)
        except ValueError as e:
            #buf gate not in the list
            pass

    #topo_order_queue = deque()
    #topo_order_queue.extend(tmp_deque)
    #return topo_order_queue
    return scheduled_list

def main():
    #filename = "./abc_toy/netlist/c2670.v"
    filename = "./abc_toy/netlist/full_adder_1bit.v"
    from netlist_to_digraph import create_adjacency_list
    adjacency_list, vertex_list, input_list, output_list, not_gate_tuple, nor2_gate_tuple = create_adjacency_list(filename)

    #topo_order_queue = naive_topo_order("./abc_toy/netlist/c432.v", vertex_list)
    scheduled_list = naive_topo_order(filename, vertex_list)
    
    qsize = len(scheduled_list)
    #print qsize
    #print "*"*30

    for item in scheduled_list:
    	print item

    print "*"*30
    for item in vertex_list:
        print item

if __name__  == "__main__":
    main()
    
