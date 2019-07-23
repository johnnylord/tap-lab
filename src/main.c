#include <stdio.h>
#include <object.h>

static int Any_differ(const void *self, const void *b)
{
    return 0;
}

int main()
{
    void *o = new(Object);
    const void *Any = new(Class, "Any", Object, sizeOf(o), differ, Any_differ, 0);

    void *a = new(Any);

    puto(Any, stdout);
    puto(o, stdout);
    puto(a, stdout);

    if (differ(o, o) == differ(a, a))
        puts("OK");

    if (differ(o, a) != differ(a, o))
        puts("not commutative");

    delete(o);
    delete(a);
    delete((void*)Any);

    return 0;
}
