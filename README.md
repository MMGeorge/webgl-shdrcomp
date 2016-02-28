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

Saving a file ending in .vert or .frag compiles a _[filename].js with a small amount of header/footer information added in order to convert the GLSL shaders into JS strings. Initialize the shaders with [filename]_SOURCE. 

### Recommended:
I highly recommend the following packages for writing and debugging GLSL shaders:
* [glsl-mode] - A major mode for Open GLSL shader files
* [flycheck] - For basic error checking
* [flycheck-glsl] - Extends flycheck functionality to GLSL

   [flycheck]: <https://github.com/flycheck/flycheck>
   [flycheck-glsl]: <https://github.com/Kaali/flycheck-glsl>
   [glsl-mode]: <https://github.com/jimhourihan/glsl-mode>
   
