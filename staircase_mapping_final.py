import re
import pickle
from collections import deque
from copy import deepcopy


from netlist_to_digraph import myparser
from gate import gate
from gate import gate_nor2
from memristor_mapping import memristor_mapping
from memristor_mapping import map_compress

import numpy as np
from collections import namedtuple
import random
from random import choice

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
	#filename = "./abc_toy/netlist/c432.v"
	#filename = "./netlist/full_adder_1bit.v"
	filename = "./netlist/19example.v"
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
	
	nor_num = len(nor2_gate_tuple)
	inv_num = len(not_gate_tuple)
	
	#if not("G" in input_list):you
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
	
	'''
	#topo sort
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
	'''
	
	topo_gatelist = deepcopy(gatelist)
	topo_gatelist.reverse()
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
		#print item.gateID, item.gateName, item.gateType, item.fanin, item.fanout
		#print item.gateType, item.gateName, item.fanin
		if item.gateType == "INV":
			m1 += 1
			#m1 += 0
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
			#temp_gate_nor2.fanout = deepcopy(item.fanout)
			topo_gatelist_r.append(temp_gate_nor2)
	topo_gatelist_r = deepcopy(topo_gatelist_r)		
	for item in topo_gatelist_r:
		for item1 in topo_gatelist_r:
			if item1.input1_gate == item.gateName or item1.input2_gate == item.gateName:
				item.fanout.append(item1.gateName)
	#for item in topo_gatelist_r:
	#	print item.gateID, item.gateName, item.input1_gate, item.input1_type, item.input2_gate, item.input2_type  		
	
	#topo_gatelist_r.reverse()
	'''
	for item in topo_gatelist_r:
		#print item.gateID, item.gateName, item.input1_gate, item.input1_type, item.input2_gate, item.input2_type
		print item.gateName, item.input1_gate, item.input2_gate, item.fanout
	'''
		
	stages = []
	inputs = []

	#from back to front
	prev_gates = deepcopy(output_list)

	
	while 1:
		current_stage = []
		current_stage_inputs = []
		for item in topo_gatelist_r:
			if item.isRemoved == True:
				continue
			isBefore = True
			for item1 in item.fanout:
				if item1 not in prev_gates:
					isBefore = False
			#if (item.gateName not in current_stage_inputs) and (isBefore == True):
			if isBefore == True:
				#prev_gates.append(item.gateName)
				current_stage.append(item.gateName)
				current_stage_inputs.append(item.input1_gate)
				current_stage_inputs.append(item.input2_gate)
				item.isRemoved = True	
		stages.append(current_stage)
		for item in current_stage:
			prev_gates.append(item)
		current_stage_inputs = func3(current_stage_inputs)
		inputs.append(current_stage_inputs)
		isEnd = True
		for item in topo_gatelist_r:
			if item.isRemoved == False:
				isEnd = False
		if isEnd == True:
			break	
	stages.reverse()	
	#inputs.reverse()		
	#print stages
	#print len(stages)
	#print inputs
	#print "Time Step Number = %d"%(6*len(stages))		
	
	row = 0
	col = len(stages[0])
	count_stage = 0
	for item in inputs:
		if count_stage%2 == 0:
			#row += stages[index]
			col += len(inputs[count_stage])
		else:
			#col += stages[index]
			row += len(inputs[count_stage])
		count_stage += 1	
	print col, row
	
	
	
	
	t = 0
	addition_inv = 0
	if len(stages) < 3:
		print "Only %d stages!"%len(stages)
	else:
		for index in range(len(stages)-1):
			print "*"*50
			print "Stage No.%d"%(index+1)
			print "Current stage gates: ", stages[index]
	
			next_stage_inv = []
			next_stage_normal = []
			next_stage_mix = []
			for item in stages[index+1]:
				for item1 in topo_gatelist_r:
					if item1.gateName == item:
						#print item1.input1_type, item1.input2_type
						if item1.input1_gate in stages[index]:
							#print item1.input1_type
							if item1.input1_type == 0:
								next_stage_inv.append(item1.input1_gate)
							else:
								next_stage_normal.append(item1.input1_gate)
						if item1.input2_gate in stages[index]:
							#print item1.input2_type
							if item1.input2_type == 0:
								next_stage_inv.append(item1.input2_gate)
							else:
								next_stage_normal.append(item1.input2_gate)
			next_stage_normal = func3(next_stage_normal)
			
			#print next_stage_inv
			next_stage_inv_only = []
			for item in next_stage_inv:
				if item not in next_stage_normal:
					next_stage_inv_only.append(item)
				else:
					next_stage_mix.append(item)
			print "Next stage mixed fanout gates: ", next_stage_mix		
			next_stage_inv_only = func3(next_stage_inv_only)
			print "Next stage inv only gates: ", next_stage_inv_only
			
			cross_stage_fanout_normal = []
			cross_stage_fanout_inv = []	
			if index < len(stages) - 2:
				for item1 in stages[index]:
					#print item1
					for index1 in range(index + 2, len(stages)):
						for item3 in stages[index1]:
							for item2 in topo_gatelist_r:
								if item2.gateName == item3:
									#print item2.gateName, item2.input1_gate, item2.input2_gate				
									if item2.input1_gate == item1:
										#print item1, "inputs to ", item2.gateName
										if item2.input1_type == 1:
											cross_stage_fanout_normal.append(item1)
										else:
											cross_stage_fanout_inv.append(item1)
									if item2.input2_gate == item1:
										#print item1, "inputs to ", item2.gateName
										if item2.input2_type == 1:
											cross_stage_fanout_normal.append(item1)
										else:
											cross_stage_fanout_inv.append(item1)
				cross_stage_fanout_normal = func3(cross_stage_fanout_normal)
				cross_stage_fanout_inv = func3(cross_stage_fanout_inv)							
				print "Cross stage fanout in true form: ", cross_stage_fanout_normal
				print "Cross stage fanout in inv form: ", cross_stage_fanout_inv
			else:
				print "Cross stage fanout in true form: ", []
				print "Cross stage fanout in inv form: ", []
			len1 = len(next_stage_mix)
			len2 = len(next_stage_inv_only)
			len3 = len(cross_stage_fanout_normal)
			len4 = len(cross_stage_fanout_inv)
			if len2 == len(stages[index]):
				len0 = 0
			else:
				len0 = 1	 
			current_stage_timestep = len0 + len1*1 + len2*2 + len3*2 + len4*3
			addition_inv += (len2 + len3*2 + len4*3)
			#sprint len1, len2, len3, len4
			print "Current stage timestep = %d"%current_stage_timestep
			t += current_stage_timestep
		
		# Last stage			
		print "*"*50
		print "Stage No.%d"%(len(stages))
		print "Current stage gates: ", stages[len(stages)-1]
		print "Next stage mixed fanout gates: ", stages[len(stages)-1]
		print "Next stage inv only gates: ", []
		print "Cross stage fanout in true form: ", []
		print "Cross stage fanout in inv form: ", []
		print "Current stage timestep = %d"%1
		t += 1
	
	print "*"*50	
	#print "Timestep = %d"%t
	
	print "m = %d"%m1
	print "t = %d"%t
	print "s = %d"%len(stages)	
	
	print "NOR gate number = %d"%nor_num
	print "INV gate number = %d"%inv_num
	print "INV gate number for cross stage fanout = %d"%addition_inv
	
	stages.reverse()
	#print stages
	#print inputs
	
	memristor = namedtuple('memristor', ['gateName', 'x', 'y'])
	
	map_gateName = memristor_mapping(stages, inputs, topo_gatelist_r)
	
	map_compress(map_gateName)
	
if __name__ == '__main__':
    main()	
