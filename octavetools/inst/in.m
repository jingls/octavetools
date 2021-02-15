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
## @deftypefn {} {@var{retval} =} in (@var{str}, @var{str_cell_array})
##
## Return true if @var{str} is present in the cell array of strings @var{str_cell_array}.
##
## @seealso{}
## @end deftypefn

function retval = in (str, str_cell_array)
  % Example:
  % str_cell_array = {"str1", "str2", "str3"};
  % str = "str2";
  % is_in = in (str, str_cell_array);
  retval = any (str_idx (str, str_cell_array));
endfunction

% str_cell_array = {"a", "b"};
% str = "a";
% idx = str_idx (str, str_cell_array);
function idx = str_idx (str, str_cell_array)
  idx = strcmp (str, str_cell_array);
endfunction
