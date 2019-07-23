#ifndef OBJECT_H
#define OBJECT_H

/*
 * OOP implementation in C
 *
 * This header file includes the interface for common OOP interface
 */

#include <stdio.h>
#include <stdarg.h>
#include <stddef.h>

extern const void *Object;
extern const void *Class;

void *new(const void *class, ...);
void delete(void *self);

const void *classOf(const void *self);
size_t sizeOf(const void *self);

void *ctor(void *self, va_list *app);
void *dtor(void *self);
int differ(const void *self, const void *b);
int puto(const void *self, FILE *fp);

const void *super(const void *self);

#endif
