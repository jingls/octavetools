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
## @deftypefn {} {@var{cell_str} =} file_into_cellstr (@var{file_path})
## Read the contents of the text file @var{file_path} into the cellstring
## @var{cell_str}.
## 
## Each column in @var{cell_str} corresponds to a line in @var{file_path}.
##
## @seealso{grep_cell, grep_file}
## @end deftypefn

function cell_str = file_into_cellstr (file_path)
  fid_in = fopen (file_path);
  
  cell_str = {};
  
  % for each line of the file
  do_it = true;
  i = 1;
  while (do_it)
    line = fgets(fid_in);
    if (line == -1) % reached end of file
      break;
    end
    cell_str{i} = line;
    i = i + 1;
  endwhile
  fclose(fid_in);
endfunction
