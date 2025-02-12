* 问 ： lua 函数传参所需的内存是堆还是栈
* 答 ：Lua 函数传参所需的内存是栈。在 Lua 中，函数参数和局部变量都是存储在栈中的，函数调用时参数被压入栈中，当函数返回时这些参数会被弹出栈。因此，在使用 Lua 函数时，需要注意栈空间的大小限制，以避免栈溢出等问题。
* 问 ：c#呢
* 答 ：

在 C# 中，函数传参所需的内存有两种可能性：基本类型和枚举类型的参数是通过值传递（传值），而其他类型的参数则是通过引用传递（传址）。

对于基本类型和枚举类型的参数，它们的值会被复制到一个新的栈帧中，传递给函数，这个栈帧在函数调用结束后将被弹出。这意味着当函数修改这些参数时，并不会影响到原始变量的值。

而对于其他类型的参数，包括类、结构体、数组等，它们的地址会被复制到一个新的栈帧中，传递给函数。这样，在函数中对这些参数进行修改时，实际上是在原始变量所指向的内存地址中进行的，因此函数调用结束后，原始变量的值也会受到影响。

需要注意的是，在 C# 中，对象实例默认都是引用传递，因为它们在堆上分配，而引用本身是存储在栈中的。如果需要将对象实例按值传递，可以使用关键字 `ref` 或者 `in` 来修饰参数，这样参数就成为了引用传递，而不是默认的值传递。
