# -*- coding: utf-8 -*-
#
# cython: wraparound  = False
# cython: boundscheck = False
# cython: cdivision   = True
"""Example Cython module that calls a function from a subpackage of mylibrary."""

from __future__ import division, print_function, absolute_import


# Use absolute module names, even from this library itself.
#
cimport poc.cython_extensions.helloworld as helloworld


def hello():
    """Python interface to mylibrary.subpackage.helloworld.
This is mainly an example of absolute imports in Cython modules.
Parameters:
    s : str
        The string to echo.
"""
    out = helloworld.hello()
    print(out)
    
    print('trying to load the sundials program')
    helloworld.c_roberts()

