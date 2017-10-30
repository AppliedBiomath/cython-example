
# -*- coding: utf-8 -*-
#
# cython: wraparound  = False
# cython: boundscheck = False
# cython: cdivision   = True
"""Example Cython module."""  # this is the Python-level docstring

# Note that this is a pure Cython-level module; it has no "def" functions or Python-accessible objects.
#
# If this is imported to Python, the user will just see the module docstring.

from __future__ import division, print_function, absolute_import

cdef extern from "test.h":
   cpdef double hello()

