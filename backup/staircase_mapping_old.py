import re
import pickle
from collections import deque
from copy import deepcopy

#from netlist_to_digraph import create_adjacency_list
from netlist_to_digraph import myparser
#from node import node
#from linkedlist import linkedlist
#from naive_topo_order import naive_topo_order
from gate import gate
from gate import gate_nor2

import numpy as np

def func1(one_list):
  return list(set(one_list))
  
def func3(one_list):
  temp_list=[]
  for one in one_list:
    if one not in temp_list:
      temp_list.append(one)
  return temp_list

def main():
	#filename = "./abc_toy/netlist/full_adder_1bit.v"
	filename = "./abc_toy/netlist/new_netlist/c1908.v"
	input_list = [] # primary input
	output_list = [] # primary output
	wire_list = [] # interconnected wire
	not_gate_list = []
	nor2_gate_list = []
    ###### data structure end ######

	fread = open(filename,'r')
	data = fread.read()
	not_gate_tuple, nor2_gate_tuple, input_list, output_list, wire_list = myparser(data,input_list,output_list,wire_list)
	#print not_gate_tuple
	#print nor2_gate_tuple
	#print input_list
	#print output_list
	#print wire_list
	
	#if not("G" in input_list):
	#	print "adfa"
	gatelist = []
	for index in range(len(input_list)):
		temp_gate = gate(index, input_list[index], "INPUT")	
		temp_gate.output.append(input_list[index])
		gatelist.append(temp_gate)
	temp = len(input_list)	
	for index in range(len(not_gate_tuple)):
		temp_gate = gate(index + temp, not_gate_tuple[index][0], "INV")	
		temp_gate.input.append(not_gate_tuple[index][1])
		temp_gate.output.append(not_gate_tuple[index][2])
		#print temp_gate.gateID, temp_gate.gateName, temp_gate.gateType, temp_gate.input, temp_gate.output
		gatelist.append(temp_gate)
	temp1 = len(not_gate_tuple)	+ temp
	for index in range(len(nor2_gate_tuple)):
		temp_gate = gate(index + temp1, nor2_gate_tuple[index][0], "NOR")	
		temp_gate.input.append(nor2_gate_tuple[index][1])
		temp_gate.input.append(nor2_gate_tuple[index][2])
		temp_gate.output.append(nor2_gate_tuple[index][3])
		#print temp_gate.gateID, temp_gate.gateName, temp_gate.gateType, temp_gate.input, temp_gate.output
		gatelist.append(temp_gate)
	
	#for item in gatelist:
	#	print item.gateID, item.gateName, item.gateType, item.input, item.output	
	for item in gatelist:
		for item2 in gatelist:
			if item.output[0] in item2.input:
				item.outdegree += 1
	for item in gatelist:
		if item.gateType == "INPUT":
			item.indegree = 0
		elif item.gateType == "INV":
			item.indegree = 1
		elif item.gateType == "NOR":
			item.indegree = 2
				
	#for item in gatelist:
	#	print item.gateID, item.gateName, item.gateType, item.indegree, item.outdegree			
	
	topo_gatelist = []
	temp_gatelist = []

	temp_gatelist = deepcopy(gatelist)
	#for item in temp_gatelist:
	#	print item.gateID, item.gateName, item.gateType, item.input, item.output	

	while 1:
		for item in temp_gatelist:
			if item.indegree == 0 and item.removed == False:
				for item1 in gatelist:
					if item.gateID == item1.gateID:
						topo_gatelist.append(item1)
				item.removed = True		
				for item2 in temp_gatelist:
					if (item.output[0] in item2.input) and item2.removed == False:
						item2.input.remove(item.output[0])
						item2.indegree = item2.indegree - 1
		listEmpty = True				
		for item3 in temp_gatelist:
			if 	item3.removed == False:
				listEmpty = False		
		if listEmpty == True:
			break	
	
	#for item in topo_gatelist:
	#	print item.gateID, item.gateName, item.gateType, item.input, item.output		
	topo_gatelist.reverse()
	#for item in topo_gatelist:
	#	print item.gateID, item.gateName, item.gateType, item.input, item.output, item.removed
	
	for item in topo_gatelist:
		for item1 in topo_gatelist:
			if item.gateType == "INV":
				if (item.input[0] == item1.output[0]) and item.gateID != item1.gateID:
					item.fanin.append(item1.gateName)
			elif item.gateType == "NOR":
				if (item.input[0] == item1.output[0] or item.input[1] == item1.output[0]) and item.gateID != item1.gateID:
					item.fanin.append(item1.gateName)
	for item in topo_gatelist:
		for item1 in topo_gatelist:
			if (item.output[0] in item1.input) and item.gateID != item1.gateID:
				item.fanout.append(item1.gateName)					
	m1 = 0
	
	for item in topo_gatelist:
		#print item.gateID, item.gat
      temp_list.append(one)eName, item.gateType, item.fanin, item.fanout
		#print item.gateType, item.gateName, item.fanin
		if item.gateType == "INV":
			#m1 += 1
			m1 += 0
		elif item.gateType == "NOR":
			m1 += 2	
	#print "m1 = %d"%m1	
	
	stages = []
	inputs = []
	while 1:
		outputlist = []
		inputlist = []
		for item in topo_gatelist:
			if item.removed == True:
				continue 
			if (item.gateName not in inputlist):
				outputlist.append(item.gateName)
				if item.gateType == "INV":
					inputlist.append(item.fanin[0])
				elif item.gateType == "NOR":
					inputlist.append(item.fanin[0])
					inputlist.append(item.fanin[1])
				inputlist = func3(inputlist)
				item.removed = True
			else:
				break	
		#print outputlist
		stages.append(outputlist)
		#print inputlist		
		inputs.append(inputlist)
		
		isEnd = True
		for item in topo_gatelist:
			if item.removed == False:
				isEnd = False
		if isEnd == True:
			break	
	#print stages	
	#print inputs
	#print len(stages)	
						
						
						
						
	#combine INV with NOR2 in next step 
	topo_gatelist_r = []
	index = 0
	for item in topo_gatelist:
		if item.gateType == "NOR":
			#print item.gateName
			input1 = item.fanin[0]
			input2 = item.fanin[1]
			inputs = []
			for item1 in topo_gatelist:
				if item1.gateName in item.fanin:
					#print "Fanin: %s"%item1.gateName
					if item1.gateType == "INV":
						input_buffer = []
						input_buffer.append(0)
						input_buffer.append(item1.fanin[0])
						#print input_buffer
						inputs.append(input_buffer)
					else:
						input_buffer = []
						input_buffer.append(1)
						input_buffer.append(item1.gateName)
						#print input_buffer
						inputs.append(input_buffer)
			#print inputs	
			temp_gate_nor2 = gate_nor2(index, item.gateName)
			index += 1
			temp_gate_nor2.input1_gate = inputs[0][1]
			temp_gate_nor2.input1_type = inputs[0][0]
			temp_gate_nor2.input2_gate = inputs[1][1]
			temp_gate_nor2.input2_type = inputs[1][0]
			topo_gatelist_r.append(temp_gate_nor2)
	
	#for item in topo_gatelist_r:
		#print item.gateID, item.gateName, item.input1_gate, item.input1_type, item.input2_gate, item.input2_type  		
		#print item.gateID, item.fanout
		
	
	stages = []
	inputs = []
	while 1:
		outputlist = []
		inputlist = []
		for item in topo_gatelist_r:
			if item.isRemoved == True:
				continue 
			if (item.gateName not in inputlist):
				outputlist.append(item.gateName)
				inputlist.append(item.input1_gate)
				inputlist.append(item.input2_gate)
				inputlist = func3(inputlist)
				item.isRemoved = True
			else:
				break	
		#print outputlist
		stages.append(outputlist)
		#print inputlist		
		inputs.append(inputlist)
		
		isEnd = True
		for item in topo_gatelist_r:
			if item.isRemoved == False:
				isEnd = False
		if isEnd == True:
			break	

	#print stages
	for item in stages:
		print item
		print "*"*20
	print "Stage Num: %d"%len(stages)	
	#print inputs
	
	
	#count fanout across stages:
	
	
	f_as = 0
	for index in range(len(inputs)-1):
		for item in inputs[index]:
			if (item not in stages[index+1]) and (item not in input_list):
				f_as += 1
	#print "Fanout across stages = %d"%f_as
	print "m = %d"%(f_as + m1)	
	timesteps = []
	stages.reverse()#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	inputs.reverse()
	#stages fro head to end in normal order!!!!
	for item in stages:
		timesteps.append(0)
	#find across stage fanouts:	
	##bian li stages[] kan duiying de inputs!!!!!
	#print stages
	#print inputs
		
	t = 0			
	for index in range(len(stages)-1):
		inv_gates = [] #next stage needs its complement form as input
		csf_gates = [] #cross stage fanouts
		csf_numbers = []
		for item1 in stages[index]:
			for item2 in topo_gatelist_r:
				if (item2.input1_gate == item1 and item2.input1_type == 0) or (item2.input2_gate == item1 and item2.input2_type == 0): #complement form for next stage 
					inv_gates.append(item1)
					break
			#if len(inv_gates) > 0:
			#	print inv_gates
			csf_num_list = []
			csf_num = 0 #the number of cross stage fanouts for a certain gate			
			if index < len(stages) - 2:
				for index1 in range(index + 2, len(stages)):
					if item1 in inputs[index1]:		
						if item1 not in csf_gates:
							csf_gates.append(item1)
						csf_num += 1
					#print csf_num
					if csf_num > 0:	
						csf_numbers.append(csf_num)	
				
		print "Current stage  gates: "
		print stages[index]
		print "Next stage inv gates: "
		print inv_gates		
		print "Cross stage fanout gates: "
		print csf_gates
		print "fanout numbers: "
		print csf_numbers	
		
		dup_gates = inv_gates + csf_gates
		dup_gates = func3(dup_gates)
		total = len(stages[index])
		next_inv_num = len(inv_gates)
		csf_gate_num = len(csf_gates)
		
		normal_num = total - next_inv_num
		#print normal_num, next_inv_num, csf_gate_num
		if normal_num > 0:
			normal_timestep = 1
		else: 
			normal_timestep = 0
		#next_inv_timestep = next_inv_num * 2
		if next_inv_num > 0:
			next_inv_timestep = 2
		else:
			next_inv_timestep = 0
		if csf_gate_num > 0:
			csf_timestep = 2
		else:
			csf_timestep = 0
					
		#current_timestep = normal_timestep + next_inv_timestep + csf_timestep 	 
		current_timestep = 1 + len(dup_gates)*2
		t += current_timestep
		current_timestep = 0
		#print
		
	print "t = %d"%t
	print "s = %d"%len(stages)	
	
	
	
if __name__ == '__main__':
    main()	
