.assembly RecursiveFactorial
{
}

.assembly extern System
{
}

.assembly extern mscorlib
{
}

.class public sealed auto ansi beforefieldinit Calculator
{
    .method public static int64 Factorial(int64 n)
    {
        ldarg.0
        ldc.i8 1
        tail.
        call int64 Calculator::Factorial(int64, int64)
        ret
    }

    .method public static int64 Factorial(
        int64 n,
        int64 acc)
     {
        ldarg.0
        brtrue recursion
        ldarg.1
        ret

        recursion:
        ldarg.0
        ldc.i8 1
        sub

        ldarg.0
        ldarg.1
        mul

        tail.
        call int64 Calculator::Factorial(int64, int64)
        ret
     }
}

