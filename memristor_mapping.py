from gate import gate
from gate import gate_nor2

import numpy as np
from collections import namedtuple
import random
from random import choice

memristor = namedtuple('memristor', ['gateName', 'x', 'y'])


def func1(one_list):
  return list(set(one_list))
  
def func3(one_list):
  temp_list=[]
  for one in one_list:
    if one not in temp_list:
      temp_list.append(one)
  return temp_list

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
			if len(mergeable_pairs) != 0:
				merge_pair = choice(mergeable_pairs)
				d = random.randint(1, 46) % 2
				for index in range(len(matrix)):
					if matrix[index][merge_pair[1-d]] != "Null":
						matrix[index][merge_pair[d]] = matrix[index][merge_pair[1-d]]
						matrix[index][merge_pair[1-d]] = "Null"
				#print "One col is merged!"
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
			if len(mergeable_pairs) != 0:
				merge_pair = choice(mergeable_pairs)
				d = random.randint(1, 46) % 2
				for index in range(len(matrix[0])): 
					if matrix[merge_pair[1-d]][index] != "Null":
	 					matrix[merge_pair[d]][index] = matrix[merge_pair[1-d]][index]
						matrix[merge_pair[1-d]][index] = "Null"
				#print "One row is merged!"
				return True
	return False				
	
def print_map(matrix):
	for i in range(len(matrix)):
		print matrix[i]
		
		
		
def memristor_mapping(stages, inputs, topo_gatelist):	
	print "Mapping start..."
	# From back to forth
	position_x = 1
	position_y = 0
	mapped_m = []
	
	movement = []
	movement.append(len(func3(stages[0])))
	for i in range(1, len(stages)):
		movement.append(len(func3(inputs[i - 1] + stages[i])))
	#print movement
	
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
					#	temp_inputs = gate.fanin
						temp_inputs.append(gate.input1_gate)
						temp_inputs.append(gate.input2_gate)
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
					#	temp_inputs = gate.fanin
						temp_inputs.append(gate.input1_gate)
						temp_inputs.append(gate.input2_gate)
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
	#print origin_size_x, origin_size_y
	
	#initial the map
	map_gateName = []
	for indexx in range(origin_size_x + 1):
		temp_col = []
		for indexy in range(origin_size_y + 1):
			temp_col.append("Null")
		map_gateName.append(temp_col)
	for item in mapped_m:
		map_gateName[item.x][item.y] = item.gateName
	#print_map(map_gateName)		
	
	return map_gateName

	
	
def map_compress(map_gateName):	
	print "Merging rows and cols..."
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
	
	#draw the map
	'''
	from PIL import Image
	
	map_img = Image.new('RGB', (len(map_gateName_rotated), len(map_gateName_rotated[0])), (255, 255, 255))
	for r_index in range(len(map_gateName_rotated)):
		for c_index in range(len(map_gateName_rotated[0])):
			if map_gateName_rotated[r_index][c_index] != "Null":
				map_img.putpixel((r_index, c_index), (0,0,0))
			else:
				map_img.putpixel((r_index, c_index), (255,255,255))
	map_img.show()		
	'''	
		
		
		
		
		
		
		
