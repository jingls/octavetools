## Copyright (C) 2021 Tallis Huther da Costa <tallis.hcosta@gmail.com>
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{matching_lines} =} grep_cell (@var{cell_str}, @var{pattern})
## 
## Perform a grep-like operation on a cellstring using regexp.
##
## Examples:
##
## @example
## @group
## cell_str = @{'' '@@node Text 1' '@@section Text @@deftypefun' '@@deftypefun double' 'Text 3' '16' '@@deftypefun int' ' other text'@};
## 
## pattern = '@@deftypefun';
## matching_lines = grep_cell (cell_str, pattern)
## @result{} matching_lines =
## @{
##   [1,1] = @@section Text @@deftypefun
##   [1,2] = @@deftypefun double
##   [1,3] = @@deftypefun int
## @}
## 
## pattern = '^@@deftypefun';
## matching_lines = grep_cell (cell_str, pattern)
## @result{} matching_lines =
## @{
##   [1,1] = @@deftypefun double
##   [1,2] = @@deftypefun int
## @}
##
## @end group
## @end example
##
## @seealso{regexp, grep_file, file_into_cellstr}
## @end deftypefn

function matching_lines = grep_cell (cell_str, pattern)
  matching_lines = {};
  [regexp_idx] = regexp (cell_str, pattern);
  count = 1;
  for i = 1:numel(regexp_idx)
    if (!isempty(regexp_idx{i}))
      matching_lines{count} = cell_str{i};
      count = count + 1;
    endif
  endfor
endfunction
