class gate():
    def __init__(self, gateID = None, gateName = None, gateType = None):
		self.gateID = gateID
		self.gateName = gateName
		self.gateType = gateType
		
		self.input = []
		self.output = []	
		self.fanin = []
		self.fanout = []
		self.indegree = 0
		self.outdegree = 0
		
		self.removed = False
'''
    def printnode(self):
        print "current nodeID: ", self.current_nodeID
        print "adjacent node: ", self.adjacent_node
        print
'''

class gate_nor2():
	def  __init__(self, gateID = None, gateName = None):
		self.gateID = gateID
		self.gateName = gateName
		self.input1_gate = None
		self.input1_type = None
		self.input2_gate = None
		self.input2_type = None
		self.fanout = []
		self.isRemoved = False
