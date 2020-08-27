import re
import pickle
from gate import gate

def fileRead(filename):
	fread = open(filename, 'r')
	#print fread
	data = fread.read()
	local_input_list = re.search("input (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")
	local_output_list = re.search("output (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")
	local_wire_list = re.search("wire (.*?);", data, re.DOTALL).groups(0)[0].replace(" ","").replace("\n","").split(",")
	
	fread = open(filename, 'r')
	gatelist = []
	nor_list = []
	inv_list = []
	ID = 0
	lines = fread.readlines()
	for line in lines:
		inv = re.search("inv1\s*(.*?)\(\.a\((.*?)\).*?\.O\((.*?)\)\);", line, re.DOTALL)
		nor = re.search("nor2\s*(.*?)\(\.a\((.*?)\).*?\.b\((.*?)\).*?\.O\((.*?)\)\);", line, re.DOTALL)
		if inv is not None:
			#print inv.group(1), inv.group(2), inv.group(3)
			temp_gate = gate(ID, inv.group(1), "INV")
			temp_gate.input.append(inv.group(2))
			temp_gate.output.append(inv.group(3))
			gatelist.append(temp_gate)
			inv_list.append(temp_gate)
			ID += 1
		elif nor is not None:
			#print nor.group(1), nor.group(2), nor.group(3), nor.group(4)
			temp_gate = gate(ID, nor.group(1), "NOR")
			temp_gate.input.append(nor.group(2))
			temp_gate.input.append(nor.group(3))
			temp_gate.output.append(nor.group(4))
			gatelist.append(temp_gate)
			nor_list.append(temp_gate)
			ID += 1
	return local_input_list, local_output_list, local_wire_list, gatelist, nor_list, inv_list


def main():
	filename = "./abc_toy/netlist/full_adder_1bit.v"
	inputlist = []
	outputlist = []
	wirelist = []
	gatelist = []
	nor_list = []
	inv_list = []
	
	inputlist, outputist, wirelist, gatelist, nor_list, inv_list = fileRead(filename)

	'''for item in gatelist:
		print item.gateID, item.gateName, item.gateType'''
	for item in inv_list:
		print item.gateID, item.gateName, item.gateType		
	for item in nor_list:
		print item.gateID, item.gateName, item.gateType	
	
if __name__ == '__main__':
    main()	
