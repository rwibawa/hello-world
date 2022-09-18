#include <stdio.h>

int otherfunc(int a)
{
  printf("You sent %d\n", a);
  return 0;
}

int main()
{
  otherfunc(1);
  return 0;
}