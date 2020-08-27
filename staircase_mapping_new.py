import re
import pickle
from collections import deque
from copy import deepcopy

from fileRead import fileRead
from gate import gate
from gate import gate_nor2

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
  
def merge_rows_check(row0, row1):
	if_mergeable = True
	for index in range(len(row0)):
		if (row0[index] != "Null" and row1[index] != "Null"):
			if_mergeable = False
	return if_mergeable

def merge_rows(row0, row1):
	for index in range(len(row0)):
		if (row1[index] != "Null"):
			row0[index] = row1[index]
			row1[index] = "Null"
	return row0, row1

def rotate(matrix):
	x = len(matrix)
	y = len(matrix[0])
	m = []
	for i in range(y):
		temp_row = []
		for j in range(x):
			temp_row.append(matrix[j][i])
		m.append(temp_row)
	return m	
'''
def merge_cols_once(matrix):
	empty_col = []
	for i in range(len(matrix)):
		empty_col.append("Null")
	for i in range(len(matrix[0])):
		col0 = []
		for j in range(len(matrix)):
			col0.append(matrix[j][i])		
		for k in range(i, len(matrix[0])):
			col1 = []
			for l in range(len(matrix)):
				col1.append(matrix[l][k])
			is_mergeable = True
			for index in range(len(col0)):
				if (col0[index] != "Null" and col1[index] != "Null"):
					is_mergeable = False
			if is_mergeable == True and col1 != empty_col:
				for index in range(len(col0)):
					if matrix[k][index] != "Null":
						matrix[i][index] = matrix[k][index]
						matrix[k][index] = "Null"
				print "One col is merged!"
				return True	
	return False			
'''
def merge_cols_once(matrix):
	empty_col = []
	mergeable_pairs = []
	for i in range(len(matrix)):
		empty_col.append("Null")
	for i in range(len(matrix[0])):
		#for j in range(len(matrix[0]) - 1, i - 1, -1):
		for j in range(i, len(matrix[0])):
			is_mergeable = True
			for index in range(len(matrix)):
				if matrix[index][i] != "Null" and matrix[index][j] != "Null":
					is_mergeable = False
			col_j = [row[j] for row in matrix]
			if is_mergeable == True and col_j != empty_col:
				mergeable_pairs.append([i, j])
				#for index in range(len(matrix)):
				#	if matrix[index][j] != "Null":
				#		matrix[index][i] = matrix[index][j]
				#		matrix[index][j] = "Null"
				#print "One col is merged!"
				#return True
			if len(mergeable_pairs) != 0:
				merge_pair = choice(mergeable_pairs)
				d = random.randint(1, 46) % 2
				for index in range(len(matrix)):
					if matrix[index][merge_pair[1-d]] != "Null":
						matrix[index][merge_pair[d]] = matrix[index][merge_pair[1-d]]
						matrix[index][merge_pair[1-d]] = "Null"
				print "One col is merged!"
				return True
	return False					

def merge_rows_once(matrix):
	empty_row = []
	mergeable_pairs = []
	for i in range(len(matrix[0])):
		empty_row.append("Null")
	for i in range(len(matrix)):
		#for j in range(len(matrix) - 1, i - 1, -1):
		for j in range(i, len(matrix)):
			is_mergeable = True
			for index in range(len(matrix[0])):
				if matrix[i][index] != "Null" and matrix[j][index] != "Null":
					is_mergeable = False
			if is_mergeable == True and matrix[j] != empty_row:
				mergeable_pairs.append([i, j])
				#for index in range(len(matrix[0])):
				#	if matrix[j][index] != "Null":
 				#		matrix[i][index] = matrix[j][index]
				#		matrix[j][index] = "Null"
				#print "One row is merged!"
				#return True
			if len(mergeable_pairs) != 0:
				merge_pair = choice(mergeable_pairs)
				d = random.randint(1, 46) % 2
				for index in range(len(matrix[0])): 
					if matrix[merge_pair[1-d]][index] != "Null":
	 					matrix[merge_pair[d]][index] = matrix[merge_pair[1-d]][index]
						matrix[merge_pair[1-d]][index] = "Null"
				print "One row is merged!"
				return True
	return False				
	
def print_map(matrix):
	for i in range(len(matrix)):
		print matrix[i]	
					
def main():
	#filename = "./netlist/c2670.v"
	#filename = "./abc_toy/netlist/c499.v"
	filename = "./netlist/19example.v"
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
	
	#print stages
	print "Stage Num = %d"%len(stages)
	#print inputs
	
	stages.reverse()
	inputs.reverse()
	
	print stages
	print inputs
	
	memristor = namedtuple('memristor', ['gateName', 'x', 'y'])
	'''
	position_x = 0
	position_y = 0
	mapped_m = []
	for stage_index in range(len(stages)):
		position_x_origin = position_x
		position_y_origin = position_y
		for current_gate in stages[stage_index]:
			current_inputs = func3(inputs[stage_index])
			current_inputs_offsets = []
			for index in range(len(current_inputs)):
				currName_rotated), len(map_gateName_rotated[0])	
	#print map_gateName_rotatedent_inputs_offsets.append((index+1))
			#print current_inputs	
			#print current_inputs_offsets		
			current_inputs_mapped = []
			if stage_index == 0:
				current_m = memristor(gateName = current_gate, x = position_x, y = position_y)
				mapped_m.append(current_m)
			input_temp = []
			for item in topo_gatelist:
				if item.gateName == current_gate:
					input_temp = item.fanin
					#print input_temp
			if stage_index % 2 == 0:
				for item in input_temp:
					temp_x = position_x + current_inputs.index(item) + 1
					temp_input_m = memristor(gateName = item, x = temp_x, y = position_y)
					mapped_m.append(temp_input_m)										
				position_y += 1
			else:
				for item in input_temp:
					temp_y = position_y + current_inputs.index(item) + 1
					temp_input_m = memristor(gateName = item, x = position_x, y = temp_y)
					mapped_m.append(temp_input_m)
				position_x += 1				
		if stage_index % 2 == 0:
			position_y = position_y_origin + len(stages[stage_index])
		else:
			position_x = position_x_origin + len(stages[stage_index])	
				
	origin_size_x = 0
	origin_size_y = 0
	for item in mapped_m:
		print item.gateName, item.x, item.y
		if item.x > origin_size_x:
			origin_size_x = item.x
		if item.y > origin_size_y:
			origin_size_y = item.y			
	print origin_size_x, origin_size_y
	#initial the map
	map_gateName = []
	for indexx in range(origin_size_x + 1):
		temp_col = []
		for indexy in range(origin_size_y + 1):
			temp_col.append("Null")
		map_gateName.append(temp_col)
	#print map_gateName	
	#print map_gateName[origin_size_x][origin_size_y]
	'''
	
	position_x = 1
	position_y = 0
	mapped_m = []
	
	movement = []
	movement.append(len(func3(stages[0])))
	for i in range(1, len(stages)):
		movement.append(len(func3(inputs[i - 1] + stages[i])))
	print movement
	
	for index in range(len(stages[0])):
		current_m = memristor(gateName = stages[0][index], x = 0, y = index)
		mapped_m.append(current_m)
	#input_last_stage = func3(inputs[0] + stages[1])
	#print(input_last_stage)
	#next_gates = input_last_gate	
	
	prev_inputs	= []
	for stage_index in range(0, len(stages)):
		if stage_index == 0:
			current_outputs = stages[stage_index]
		else:
			current_outputs = prev_inputs	
		current_inputs = list(inputs[stage_index])
		if stage_index < len(stages) - 1:
			current_inputs += stages[stage_index + 1]
		current_inputs = func3(current_inputs)
		
		if stage_index %2 == 0:
			for item in stages[stage_index]:
				#if item in 
				temp_inputs = []
				for gate in topo_gatelist:
					if gate.gateName == item:
						temp_inputs = gate.fanin
				#print temp_inputs	
				for item_in in temp_inputs:
					temp_m = memristor(gateName = item_in, x = position_x + current_inputs.index(item_in), y = position_y + current_outputs.index(item))
					mapped_m.append(temp_m)
			for item in current_inputs:
				if item not in inputs[stage_index]:
					#print item
					temp_m = memristor(gateName = item, x = position_x + current_inputs.index(item), y = position_y)
					mapped_m.append(temp_m)	
			position_y += movement[stage_index]
		else:
			for item in stages[stage_index]:
				temp_inputs = []
				for gate in topo_gatelist:
					if gate.gateName == item:
						temp_inputs = gate.fanin
				#print temp_inputs		
				for item_in in temp_inputs:
					temp_m = memristor(gateName = item_in, x = position_x + current_outputs.index(item), y = position_y + current_inputs.index(item_in))	
					mapped_m.append(temp_m)
			for item in current_inputs:
				if item not in inputs[stage_index]:
					#print item
					temp_m = memristor(gateName = item, x = position_x, y = position_y + current_inputs.index(item))
					mapped_m.append(temp_m)		
			position_x += movement[stage_index]
			
		prev_inputs = current_inputs
		#print "Out ", current_outputs
		#print "In  ", current_inputs
		#print inputs[stage_index]
		
	origin_size_x = 0
	origin_size_y = 0
	for item in mapped_m:
		#print item.gateName, item.x, item.y
		if item.x > origin_size_x:
			origin_size_x = item.x
		if item.y > origin_size_y:
			origin_size_y = item.y			
	print origin_size_x, origin_size_y
	#initial the map
	map_gateName = []
	for indexx in range(origin_size_x + 1):
		temp_col = []
		for indexy in range(origin_size_y + 1):
			temp_col.append("Null")
		map_gateName.append(temp_col)
	for item in mapped_m:
		map_gateName[item.x][item.y] = item.gateName
	print_map(map_gateName)	
			
			
			
	'''		
	for i in range(0, origin_size_x):
		for j in range(i, origin_size_x + 1):
			if merge_rows_check(map_gateName[i], map_gateName[j]) == True:
				map_gateName[i], map_gateName[j] = merge_rows(map_gateName[i], map_gateName[j])
	#print map_gateName
	
	empty_row = []
	for i in range(origin_size_y + 1):
		empty_row.append("Null")
	map_gateName_row_compressed = list(map_gateName)

	for i in range(len(map_gateName_row_compressed)-1, -1, -1):
		if map_gateName_row_compressed[i] == empty_row:
			map_gateName_row_compressed.pop(i)
	print "*"*50
	print len(map_gateName_row_compressed), len(map_gateName_row_compressed[0])
	print "*"*50
	
	
	#print len(map_gateName)
	map_gateName_row_compressed_rotated = rotate(map_gateName_row_compressed)
	#print len(map_gateName_row_compressed_rotated), len(map_gateName_row_compressed_rotated[0])
	#print map_gateName_row_compressed_rotated
	
	empty_row_1 = []
	for i in range(len(map_gateName_row_compressed_rotated[0])):
		empty_row_1.append("Null")
	#print len(empty_row_1)	
	map_gateName_row_compressed_rotated_col_compressed = list(map_gateName_row_compressed_rotated)

	for i in range(len(map_gateName_row_compressed_rotated_col_compressed)-1, -1, -1):
		if map_gateName_row_compressed_rotated_col_compressed[i] == empty_row_1:
			map_gateName_row_compressed_rotated_col_compressed.pop(i)
	print "*"*50
	
	print_map(map_gateName_row_compressed_rotated_col_compressed)
	print len(map_gateName_row_compressed_rotated_col_compressed), len(map_gateName_row_compressed_rotated_col_compressed[0])
	'''
	
	print 
	print_map(map_gateName)
	print "Origin Size: ", len(map_gateName), len(map_gateName[0])
	
	is_mergeable_row = True
	is_mergeable_col = True	
	while (is_mergeable_row == True or is_mergeable_col == True):
		is_mergeable_row = merge_rows_once(map_gateName)
		is_mergeable_col = merge_cols_once(map_gateName)
		#print "*"*50
		#print_map(map_gateName)	
	
	empty_row = []
	for i in range(len(map_gateName[0])):
		empty_row.append("Null")
	for i in range(len(map_gateName)-1, -1, -1):
		if map_gateName[i] == empty_row:
			map_gateName.pop(i)	
	
	map_gateName_rotated = rotate(map_gateName)
	empty_col = []
	for i in range(len(map_gateName_rotated[0])):
		empty_col.append("Null")
	for i in range(len(map_gateName_rotated)-1, -1, -1):
		if map_gateName_rotated[i] == empty_col:
			map_gateName_rotated.pop(i)
	
	print "Final Size: ", len(map_gateName_rotated), len(map_gateName_rotated[0])	
	#print_map( map_gateName_rotated)
	

	from PIL import Image
	
	map_img = Image.new('RGB', (len(map_gateName_rotated), len(map_gateName_rotated[0])), (255, 255, 255))
	for r_index in range(len(map_gateName_rotated)):
		for c_index in range(len(map_gateName_rotated[0])):
			if map_gateName_rotated[r_index][c_index] != "Null":
				map_img.putpixel((r_index, c_index), (0,0,0))
			else:
				map_img.putpixel((r_index, c_index), (255,255,255))
	map_img.show()				
	
	
	
if __name__ == '__main__':
    main()	  
