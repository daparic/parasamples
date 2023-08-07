#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *header, *header2; /* initialized somewhere */

void process(int flag, char *body) {
    char buffer[100], buffer2[100];
    // memset(buffer2, 0x00, 10);
    strcpy(buffer, header);
    if (flag) {
        buffer2[0] = 'a';
        buffer2[51] = 'b';
        // buffer2[99] = '\0';
        strcat(buffer, buffer2); // VIOLATION
    }
    /* ... */
}
