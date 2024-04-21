// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_upgrd(_name,_script,_frequency, _lvl){
var _grid = upgrades_grid
var _y = new_row(_grid)


_grid[# 0, _y] = _name
_grid[# 1, _y] = _script
_grid[# 2, _y] = _frequency
_grid[# 3, _y] = _lvl

}