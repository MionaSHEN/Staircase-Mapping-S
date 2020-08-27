class node():
    def __init__(self,current_nodeID = None, adjacent_node = None):
        self.current_nodeID = current_nodeID
        self.adjacent_node = adjacent_node

    def printnode(self):
        print "current nodeID: ", self.current_nodeID
        print "adjacent node: ", self.adjacent_node
        print

