/*
 Compute the 64-element table T[1 ... 64] constructed from the sine function.
 See RFC 1321 for more details.
 */

#include <math.h>
#include <stdio.h>

int main()
{
    unsigned int T[64];
    unsigned int i;

    /* Compute table */
    for (i = 0; i < 64; i++) {
        T[i] = (unsigned int)(4294967296 * fabs(sin(i + 1)));
    }

    printf("Round 1\n");
    for (i = 0; i < 16; i++) {
        printf("%02d - %x\n", i + 1, T[i]);
    }

    printf("\nRound 2\n");
    for (i = 16; i < 32; i++) {
        printf("%02d - %x\n", i + 1, T[i]);
    }

    printf("\nRound 3\n");
    for (i = 32; i < 48; i++) {
        printf("%02d - %x\n", i + 1, T[i]);
    }

    printf("\nRound 4\n");
    for (i = 48; i < 64; i++) {
        printf("%02d - %x\n", i + 1, T[i]);
    }
}
