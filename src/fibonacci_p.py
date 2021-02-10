def fib(n: int) -> int:
    """ This is a description """
    old, new = 0, 1
    for _ in range(n):
        old, new = new, old + new
    return old
