-module(day1).
-export([num_words/1]).
-export([rec_num_words/1]).
-export([rec_num_words/2]).
-export([count_up/2]).


%% it's already been implemented!
num_words(String) -> string:words(String).

%% recursive attempt
rec_num_words(String) -> rec_num_words(String, 0).
rec_num_words(String, N) when String == "" -> 0;
rec_num_words(String, N) -> 
  "working on it...".

%% count up methods
count_up(0,N) -> 
  io:nl(),
  io:put_chars(string:concat("Done counting to ", integer_to_list(N))),
  io:nl();

count_up(N,M) ->
  io:put_chars(string:concat(integer_to_list(M+1), " ")),
  count_up(N-1,M+1).
