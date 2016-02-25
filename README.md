# webgl-shdrcomp

A simple utility that provides automatic conversion of .vert and  .frag GLSL shaders into Javascript.

### Installation:

Either download the zip file containing the .el or clone the repository into your .emacs.d folder. 
Then add the following to your .emacs file: 

```sh
(add-to-list 'load-path /path/to/webgl-shdrcomp)
(require 'webgl-shdrcomp)
```

### Usage:

Saving a file ending in .vert or .frag will compile a shdr_vert.js or shdr_frag.js respectively. Initialize the fragment and vertex shaders with VSHADER_SOURCE and FSHADER_SOURCE. 

### Recommended:
I strongly recommend the following packages for writing and debugging glsl shaders:
* [glsl-mode] - A major mode for Open GLSL shader files
* [flycheck] - For basic error checking
* [flycheck-glsl] - Extends flycheck functionality to glsl

   [flycheck]: <https://github.com/flycheck/flycheck>
   [flycheck-glsl]: <https://github.com/Kaali/flycheck-glsl>
   [glsl-mode]: <https://github.com/jimhourihan/glsl-mode>
   
 
### License:
This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.