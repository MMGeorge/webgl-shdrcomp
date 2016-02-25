;;; webgl-shdrcomp.el --- Automatically compile GLSL shaders into Javascript

;; Copyright (C) Matthew George
;; Time-stamp: <2016-02-24 22:32:59>
;; Version 0.01

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; A simple utility that provides automatic conversion of .vert and
;; .frag GLSL shaders for use in Javascript.

;;; Code:

(defun compile-shader()
  (let* ((buff (buffer-file-name))
	 (f-name (file-name-extension buff))
	 (f-direct (file-name-directory buff))
	 (f-ext (file-name-extension buff)))
    (cond ((equal f-name "vert")
	   (write-region
	    (concat "var VSHADER_SOURCE=`" (buffer-string) "`;") nil
	    (concat f-direct "shdr_" f-ext ".js")))
	  ((equal f-name "frag")
	   (write-region
	    (concat "var FSHADER_SOURCE=`" (buffer-string) "`;") nil
	    (concat f-direct "shdr_" f-ext ".js")))
	  (t nil))))

(add-hook 'before-save-hook 'compile-shader)

(provide 'webgl-shdrcomp)
;;; webgl-shdrcomp.el ends here
