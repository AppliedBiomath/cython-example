#include "test.h"

#include <stdio.h>
#include <math.h>


double hello(void) {

   double x = sin(1.0);


   printf("hello cython\n");
   return(x);
}
