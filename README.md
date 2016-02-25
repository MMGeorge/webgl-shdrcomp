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
* [glsl-mode] - A major mode for Open GLSL shader files
* [flycheck] - For basic error checking
* [flycheck-glsl] - Extends flycheck functionality to glsl

   [flycheck]: <https://github.com/flycheck/flycheck>
   [flycheck-glsl]: <https://github.com/Kaali/flycheck-glsl>
   [glsl-mode]: <https://github.com/jimhourihan/glsl-mode>
   
 
