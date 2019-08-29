//
// Created by ayesdie on 08/08/19.
//

// WAP to count number of operands and operators.

#include <stdio.h>

int main()
{
  size_t count = 0;
  size_t spaceCount = 0;
  size_t operandCount = 0;
  size_t operatorCount = 0;

  char *text = NULL;
  size_t crit = 0;
  size_t len;

  getline(&text, &len, stdin);

  for (int i = 0;text[i] != '\0'; ++i)
  {
    count++;
    switch (text[i])
    {
      case '+': case '-': case '*': case '/': case '%':
      case '=': case '<': case '>':
        operatorCount++;
        break;
    }
  }

  operandCount = operatorCount + 1;

  printf("Operator Count: %ld\n", operatorCount);
  printf("Operand Count: %ld", operandCount);
}
