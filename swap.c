#include<stdio.h>
int main(int argv, char*argc[]){

register int var1 = 10;
register int var2 = 20;

var1 = var1 + var2;
var2 = var1 - var2;
var1 = var1 - var2;

return 0;
}
