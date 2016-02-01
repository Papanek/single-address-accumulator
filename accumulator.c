/* Daniel Papanek
   Jan 18/16 - File Created */

#include <stdio.h>
#define STOP 0
#define LD 1
#define STO 2
#define ADD 3
#define SUB 4
#define MPY 5
#define DIV 6
#define IN 7
#define OUT 8
#define BR 9
#define BZ 10
#define BGTR 11
#define MEM_SIZE 100

main(){

  int memory[MEM_SIZE];

  FILE *fp = fopen("machineCode.txt", "r");
  if(!fp){
    printf("File not opened.\n");
    return;
  }

  int pc = 0;
  while(fscanf(fp, "%d", &memory[pc++])==1){}
  fclose(fp);

  pc = 0;
  int accumulator;
  int instruction;
  int operation;
  int argument;
  int run = 1;

  do {

    instruction = memory[pc++];
    operation = instruction/100;
    argument = instruction%100;

    switch(operation){
      case LD:
	accumulator = memory[argument];
	break;
      case STO:
	memory[argument] = accumulator;
        break;
      case ADD:
	accumulator += memory[argument];
        break;
      case SUB:
	accumulator -= memory[argument];
	break;
      case MPY:
	accumulator *= memory[argument];
	break;
      case DIV:
	accumulator /= memory[argument];
	break;
      case IN:
	printf("IN: ");
	scanf("%d", &memory[argument]);
	break;
      case OUT:
	printf("%d\n", memory[argument]);
	break;
      case BR:
	pc = argument;
	break;
      case BZ:
	if(!accumulator){
	  pc = argument;
	}
	break;
      case BGTR:
	if(accumulator>0){
	  pc = argument;
	}
	break;
      case STOP:
	run = 0;
	break;
    }
  } while(run);
}