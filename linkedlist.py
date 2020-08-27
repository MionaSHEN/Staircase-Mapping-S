from node import node as _node
#from vnode import vnode as _vnode

class linkedlist():
    def __init__(self,nodeID= None,gtype= None,gname= None, head= None,tail=None): #the listhead is a vnode structure
        self.head = head
        self.tail = tail
        self.nodeID = nodeID
        self.gtype = gtype # 1 -> NOT, 2 -> NOR2, None -> primary input
        self.gname = gname

        self.indegree = 0
        self.outdegree = 0
    
    def append_head_node(self, new_node):
        if not self.head:
            self.head = new_node
        else:
            #insert new node in the position 'self.head'
            pnode = self.head
            self.head  = new_node
            self.head.adjacent_node = pnode
    
        #update outdegree
        self.outdegree = self.outdegree + 1

    def append_tail_node(self, new_node):
        if not self.tail:
            self.tail = new_node
        else:
            # insert new node in the position 'self.tail'
            pnode =  self.tail
            self.tail = new_node
            self.tail.adjacent_node = pnode

        #update indegree
        self.indegree = self.indegree + 1

    def remove_from_head(self,gateID):#node that do remove_from_head must
                                        #have more than two fanout
        pnode = self.head
        if pnode.current_nodeID == gateID:
            self.head = pnode.adjacent_node
            del pnode
        else:
            pnode_prev = pnode
            pnode = pnode.adjacent_node
            while not (pnode == None):
                if pnode.current_nodeID == gateID:
                    pnode_prev.adjacent_node = pnode.adjacent_node
                    del pnode
                    break
                else:
                    pnode_prev = pnode
                    pnode = pnode.adjacent_node
        self.outdegree -= 1

    def remove_from_tail(self,gateID):
        pnode = self.tail
        if pnode.current_nodeID == gateID:
            self.tail = pnode.adjacent_node
            del pnode
        else:
            pnode_prev = pnode
            pnode = pnode.adjacent_node
            while not (pnode == None):
                if pnode.current_nodeID == gateID:
                    pnode_prev.adjacent_node = pnode.adjacent_node
                    del pnode
                    break
                else:
                    pnode_prev = pnode
                    pnode = pnode.adjacent_node
        self.indegree -= 1

    def traverse_head(self):
        print "traverse descendant adjacent node of %s in NO.%d entry of adjacency_list"%(self.gname, self.nodeID)
        pnode = self.head
        while not (pnode == None):
            pnode.printnode()
            pnode =  pnode.adjacent_node

    def traverse_tail(self):
        print "traverse previous adajcent node of %s in NO.%d entry of adjacency_list"%(self.gname, self.nodeID)
        pnode = self.tail
        while not (pnode == None):
            pnode.printnode()
            pnode =  pnode.adjacent_node
    
    def get_indegree(self):
        return self.indegree

    def get_outdegree(self):
        return self.outdegree

def main():
    from netlist_to_digraph import create_adjacency_list
    filename = "./abc_toy/netlist/full_adder_1bit.v"
    adjacency_list, vertex_list, input_list, output_list, not_gate_tuple, nor2_gate_tuple = create_adjacency_list(filename)
    vertex_number = len(vertex_list)
    
    #print "vertex_list info: "
    #for i in range(vertex_number):
    #    print i,vertex_list[i]

    '''
    print
    print "original dfg: "
    print '*'*10
    for i in range(vertex_number):
        adjacency_list[i].traverse_head()
        adjacency_list[i].traverse_tail()    
        print "*"*30+'\n'
    '''

    #remove_from_head
    adjacency_list[8].remove_from_head(10)
    
    #remove from tail
    adjacency_list[10].remove_from_tail(8)

    #verify
    #adjacency_list[8].traverse_head()
    #adjacency_list[10].traverse_tail()

    #add a new node to adjacency_list[10]
    new_node = _node(current_nodeID = 15, adjacent_node=None)
    adjacency_list[10].append_tail_node(new_node)
    #adjacency_list[10].traverse_tail()

    #add a new item to adjacency_list
    init_type = adjacency_list[10].gtype
    init_gname = adjacency_list[10].gname
    llist = linkedlist(nodeID = 15, gtype=init_type, gname=init_gname)
    adjacency_list.append(llist)
    new_node = _node(current_nodeID = 16)
    adjacency_list[15].append_tail_node(new_node)

    print
    print "modified dfg: "
    print '*'*30
    vertex_number = len(adjacency_list)
    for i in range(vertex_number):
        adjacency_list[i].traverse_head()
        adjacency_list[i].traverse_tail()    
        print "*"*30+'\n'
'''
def main():
    length = 1
    adjacency_list = [None]*length

    for i in range(length):
        if not adjacency_list[i]:
            llist = linkedlist(nodeID=i)
            adjacency_list[i] = llist

        # update head
        # do something    
        startpoint = i
        
        for endpoint in [2*(i+1),3*(i+1)]:
            new_node = _node(current_nodeID=endpoint, adjacent_node=None)
            adjacency_list[i].append_head_node(new_node)

        # update tail
        # do something
        for startpoint in [4*(i+1),5*(i+1),6*(i+1)]: #for debug, assume (3,i) s.t. there exists a directe arc from 3 to i
            new_node = _node(current_nodeID=startpoint, adjacent_node=None)
            adjacency_list[i].append_tail_node(new_node)

    # for debug
    for i in range(length):
        adjacency_list[i].traverse_head()
        adjacency_list[i].traverse_tail()

    for i in range(length):
        print "indegree of NO.%d vertex is %d"%(i,adjacency_list[i].get_indegree())
        print "outdegree of NO.%d vertex is %d"%(i,adjacency_list[i].get_outdegree())
'''

if __name__ == '__main__':
    main()
