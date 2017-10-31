from setuptools import setup, find_packages
from setuptools.extension import Extension
from Cython.Build import cythonize


ext_module_dostuff = Extension(
    'poc.do_stuff',
    ['poc/do_stuff.pyx'],
)

ext_module_helloworld = Extension(
    'poc.cython_extensions.helloworld',
    ['poc/cython_extensions/helloworld.pyx', 'poc/cython_extensions/test.c', 'poc/cython_extensions/cvRoberts_dns.c'],
    include_dirs = ['/usr/local/include'],
    libraries = ['m', 'sundials_cvodes', 'sundials_nvecserial'],
    library_dirs = ['/usr/local/lib'],
)

cython_ext_modules = [
   ext_module_dostuff,
   ext_module_helloworld
]


setup (
  name = "poc",
  ext_modules = cythonize(cython_ext_modules),
  packages=['poc', 'poc.cython_extensions'],
)

