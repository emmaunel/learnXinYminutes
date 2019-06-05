// Single line comment
/*
 * Multi-line comments
 */

// Constants: #define <keyword>
#define DAYS_IN_YEAR 365

// Enumeration constants are also ways ro declare constants.
enum days {SUN = 1, MON, TUE, WED, THU, FRI, SAT};

// Import headers with #include
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Note, <> are headers from C standard library.
// For own header, use double quotes ""headers"

// Declare function signatures in advance in a .h file or .c file
void function1();
int funtion2(void);

// Must declare any function before main() when the functions occur after the main() function
int addTwoInts(int x, int y);

int main(void){

}

int main(int argc, char** argv){
    printf("%d\n", 0)
}

// ints are 4 bits
int x_int = 0;

// shorts are 2 bits
short x_short = 0;
char x_char = 0;

// integer types may be unsigned(greater than or equal to zero)
unsigned short ux_short;
unsigned int ux_int;
unsigned long long ux_long;


//sizeof(T) gives you the size of a variable with type T in bytes
// sizeof(obj) yields the size of the expression
printf("%zu\n", sizeof(int))

// If the argument of the `sizeof` operator is an expression, then its argument
// is not evaluated (except VLAs (see below)).
// The value it yields in this case is a compile-time constant.
int a = 1;
// size_t is an unsigned integer type of at least 2 bytes used to represent
// the size of an object.
size_t size = sizeof(a++); // a++ is not evaluated
printf("sizeof(a++) = %zu where a = %d\n", size, a);
// prints "sizeof(a++) = 4 where a = 1" (on a 32-bit architecture)

// Arrays must be initialized with a concrete size.
char my_char_array[20]; // This array occupies 1 * 20 = 20 bytes
int my_int_array[20]; // This array occupies 4 * 20 = 80 bytes
// (assuming 4-byte words)

// You can initialize an array to 0 thusly:
char my_array[20] = {0};
// where the "{0}" part is called an "array initializer".
// NOTE that you get away without explicitly declaring the size of the array,
// IF you initialize the array on the same line. So, the following declaration
// is equivalent:
char my_array[] = {0};
// BUT, then you have to evaluate the size of the array at run-time, like this:
size_t my_array_size = sizeof(my_array) / sizeof(my_array[0]);
// WARNING If you adopt this approach, you should evaluate the size *before*
// you begin passing the array to function (see later discussion), because
// arrays get "downgraded" to raw pointers when they are passed to functions
// (so the statement above will produce the wrong result inside the function).


my_array[0];

my_array[1] = 2;

// In C99 (and as an optional feature in C11), variable-length arrays (VLAs)
// can be declared as well. The size of such an array need not be a compile
// time constant:
printf("Enter the array size: ");
int array_size;
fscanf(stdin, "%d", &array_size);
int var_length_array[array_size];
printf("sizeof array = %zu\n", sizeof var_length_array);

// Strings are just arrays of chars terminated by a NULL (0x00) byte
char a_string[20] = "This is a string";
printf("%s\n", a_string);
printf("%d\n", a_string[16]); // => 0

// Multi dimensional arrays:
int multi_array[2][5] = {
        {1, 2, 3, 4, 5},
        {6, 7, 8, 9, 0}
};

// access elements:
int array_int = multi_array[0][2]; // = 3

////////////////////////////
//// OPERATORS /////////////
////////////////////////////

// SHORTHAND FOR MULTIPLE DECLERATIONS:
int x = 1, y = 2;

int b, c;
b = c = 0;

// Bitwise operators
~0x0F // => 0xFFFFFFF0 (bitwise negation, "1's complement")
0x0F & 0xF0 // => 0x00 (bitwise AND)
0x0F | 0xF0 // => 0xFF (bitwise OR)
0x04 ^ 0x0F // => 0x0B (bitwise XOR)
0x01 << 1 // => 0x02 (bitwise left shift(by 1))
0x02 >> 1 // => 0x02 (bitwise right shift(by 1))

////////////////////////////
//// Control Structures ////
////////////////////////////

if(0){
    print
}














