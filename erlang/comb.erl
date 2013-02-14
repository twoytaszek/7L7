-module(comb).
-export([factorial/1]).
-export([fibonacci/1]).
-export([fib/1]).
-export([fib/3]).

factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

fibonacci(0) -> 1;
fibonacci(1) -> 1;
fibonacci(N) -> 
  fibonacci(N-1) + fibonacci(N-2).

fib(N) -> fib(N, 0, 1).
fib(0, _, B) -> B;
fib(N, A, B) -> 
  fib(N-1, B, A+B).
