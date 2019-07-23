#ifndef OBJECT_R
#define OBJECT_R

struct Object {
    const struct Class *class; // class description of object
};

// MetaClass
struct Class {
    const struct Object _; // class description of class
    const char *name;
    const struct Class *super;
    size_t size;
    void *(*ctor)(void *self, va_list *app);
    void *(*dtor)(void *self);
    int (*differ)(const void *self, const void *b);
    int (*puto)(const void *self, FILE *fp);
};

// These funtions should only be called in the source file implement Object and Class
void *super_ctor(const void *class, void *self, va_list *app);
void *super_dtor(const void *class, void *self);
int super_differ(const void *class, const void *self, const void *b);
int super_puto(const void *class, const void *self, FILE *fp);

#endif
