import re
import pickle
from collections import deque
from copy import deepcopy

from fileRead import fileRead
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
	#filename = "./netlist/c2670.v"
	filename = "./abc_toy/netlist/c6288.v"
	#filename = "./abc_toy/netlist/full_adder_1bit.v"
	inputlist = []
	outputlist = []
	wirelist = []
	gatelist = []
	nor_list = []
	inv_list = []
	
	inputlist, outputlist, wirelist, gatelist, nor_list, inv_list = fileRead(filename)

	topo_gatelist = deepcopy(gatelist)
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
	for item in topo_gatelist:
		if item.output[0] in outputlist:
			item.fanout.append(item.output[0])
		if item.gateType == "INV":
			if item.input[0] in inputlist:
				item.fanin.append(item.input[0])
		elif item.gateType == "NOR":
			if (item.input[0] in inputlist):
				item.fanin.append(item.input[0])
			if (item.input[1] in inputlist):
				item.fanin.append(item.input[1])
	
	#for item in topo_gatelist:
	#	print item.gateName, item.fanin, item.fanout	
	print "Gate Num = %d"%len(topo_gatelist)
	
	stages = []
	inputs = []
	prev_gates = deepcopy(inputlist)
	#print prev_gates
	while 1:
		current_stage = []
		current_stage_inputs = []
		for item in topo_gatelist:
			if item.removed == True:
				continue
			#if (item.input1_gate not in current_stage) and (item.input2_gate not in current_stage) and (item.input1_gate in prev_gates) and (item.input2_gate in prev_gates):
			if item.gateType == "NOR":
				if (item.fanin[1] in prev_gates) and (item.fanin[0] in prev_gates):
					current_stage.append(item.gateName)
					item.removed = True
					current_stage_inputs.append(item.fanin[0])
					current_stage_inputs.append(item.fanin[1])
			elif item.gateType == "INV":
				if item.fanin[0] in prev_gates:
					current_stage.append(item.gateName)
					item.removed = True
					current_stage_inputs.append(item.fanin[0])
		for item in current_stage:
			prev_gates.append(item)		
		stages.append(current_stage)
		inputs.append(current_stage_inputs)		
		isEnd = True
		for item in topo_gatelist:
			if item.removed == False:
				isEnd = False
		if isEnd == True:
			break
	
	print stages
	print "Stage Num = %d"%len(stages)
	


if __name__ == '__main__':
    main()	  
