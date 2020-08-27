import re
import pickle
from collections import deque
from copy import deepcopy


from netlist_to_digraph import myparser
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
	'''
	prev_gates = deepcopy(input_list)
	#print prev_gates
	while 1:
		current_stage = []
		current_stage_inputs = []
		for item in topo_gatelist_r:
			if item.isRemoved == True:
				continue
			#if (item.input1_gate not in current_stage) and (item.input2_gate not in current_stage) and (item.input1_gate in prev_gates) and (item.input2_gate in prev_gates):
			if (item.input1_gate in prev_gates) and (item.input2_gate in prev_gates):
				current_stage.append(item.gateName)
				#prev_gates.append(item.gateName)
				item.isRemoved = True
				current_stage_inputs.append(item.input1_gate)
				current_stage_inputs.append(item.input2_gate)
		for item in current_stage:
			prev_gates.append(item)		
		stages.append(current_stage)
		inputs.append(current_stage_inputs)		
		isEnd = True
		for item in topo_gatelist_r:
			if item.isRemoved == False:
				isEnd = False
		if isEnd == True:
			break
	'''
	#from back to front
	prev_gates = deepcopy(output_list)
	'''
	while 1:
		current_stage = []
		current_stage_inputs = []
		for item in topo_gatelist_r:
			if item.isRemoved == True:
				continue
			if item.gateName not in current_stage_inputs:
				current_stage.append(item.gateName)
				current_stage_inputs.append(item.input1_gate)
				current_stage_inputs.append(item.input2_gate)
				item.isRemoved = True
			else:
				break	
		stages.append(current_stage)
		current_stage_inputs = func3(current_stage_inputs)
		inputs.append(current_stage_inputs)
		isEnd = True
		for item in topo_gatelist_r:
			if item.isRemoved == False:
				isEnd = False
		if isEnd == True:
			break
	'''
	
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
	

	
	'''
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
				#continue
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
	#for item in stages:
	#	print item
	#	print "*"*20
	#print "Stage Num: %d"%len(stages)	
	#print inputs
	'''
	
	'''
	#count fanout across stages:
	
	f_as = 0
	for index in range(len(inputs)-1):
		for item in inputs[index]:
			if (item not in stages[index+1]) and (item not in input_list):
				f_as += 1
	#print "Fanout across stages = %d"%f_as
	print "m = %d"%(f_as + m1)	
	timesteps = []
	#stages.reverse()#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	#inputs.reverse()
	
	#stages from head to end in normal order!!!!
	for item in stages:
		timesteps.append(0)
	#find across stage fanouts:	
	##bian li stages[] kan duiying de inputs!!!!!
	#print stages
	#print inputs
	'''
	'''
	#t = 0			
	for index in range(len(stages)-1):
		inv_gates = [] #next stage needs its complement form as input
		csf_gates = [] #cross stage fanouts
		csf_numbers = []
		for item1 in stages[index]:
			for item2 in topo_gatelist_r:
				if (item2.input1_gate == item1 and item2.input1_type == 0) or (item2.input2_gate == item1 and item2.input2_type == 0): #complement form for next stage 
					inv_gates.append(item1)
					break
			
			
			#item2 = topo_gatelist_r[index+1]
			#if (item2.input1_gate == item1 and item2.input1_type == 0) or (item2.input2_gate == item1 and item2.input2_type == 0): #complement form for next stage 
			#	inv_gates.append(item1)
			
			
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
						print "%s has a cross stage fanout"%item1
					#print csf_num
					if csf_num > 0:	
						csf_numbers.append(csf_num)
						
		print "Current stage  gates: "
		print stages[index]
		print "Next stage inv gates: "
		print inv_gates		
		print "Cross stage fanout gates: "
		print csf_gates
		#print "fanout numbers: "
		#print csf_numbers	
		print "*"*30
		dup_gates = inv_gates + csf_gates
		dup_gates = func3(dup_gates)
		total = len(stages[index])
		next_inv_num = len(inv_gates)
		csf_gate_num = len(csf_gates)
		
		normal_num = total - next_inv_num
		#print normal_num, next_inv_num, csf_gate_num
		
		if normal_num > 0:
			normal_timestep = 1 inv1   g218(.a(G115gat), .O(n262));
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
		#current_timestep = 1 + next_inv_num*2 + csf_gate_num*2
		#current_timestep = (normal_num + len(dup_gates)*2)
		current_timestep = normal_num + next_inv_num*1 + csf_gate_num*2
		t += current_timestep
		current_timestep = 0
		#print
		'''
	
	print "t = %d"%t
	#print "s = %d"%len(stages)	
	
	
	print stages
	print inputs
	
	
	
	
	
if __name__ == '__main__':
    main()	
