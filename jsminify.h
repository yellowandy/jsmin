#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int foundError();
char * jsmin(const char * source);

static int   theA;
static int   theB;
static int   theLookahead = EOF;
static char * input;
static char * output;
static int	_iOut = 0;
static int	_iIn = 0;
static int _foundError = 0;
