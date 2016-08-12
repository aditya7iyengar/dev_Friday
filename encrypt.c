#include <stdio.h>
#include <unistd.h>

int c_to_n(char c)
{
    int n = -1;
    static const char * const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char *p = strchr(alphabet, toupper((unsigned char)c));

    if (p)
    {
        n = p - alphabet;
    }

    return n;
}

int inner_function(int p){
  return 1;
}

int encrypt_function(int p){
  return 1;
}

int main(int argc, char *argv[]) {
   if(argc == 2) {
      printf("The plain text supplied is %s\n", argv[1]);
      // int c = encrypt()
      int c = c_to_n(argv[1]);

      printf("%d\n", c);
      printf("The cipher text generated is %s\n", argv[1]);
   }
   else if(argc > 2) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }

   return 0;
}


