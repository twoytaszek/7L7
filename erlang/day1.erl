-module(day1).
-export([num_words/1]).
-export([rec_num_words/1]).
-export([rec_num_words/2]).
-export([count_up/2]).


%% it's already been implemented!
num_words(String) -> string:words(String).

%% recursive attempt
rec_num_words(String) -> rec_num_words(String, 0).
rec_num_words(String, N) when String == "" -> N;
rec_num_words(String, N) -> 
  StrippedString = string:strip(String),
  FirstSpace = string:chr(StrippedString, $  ),
  Len = string:len(String),
  Done = Len+1,
  case FirstSpace of
    0 -> N+1;
    Done when FirstSpace > Len -> rec_num_words("", N+1);
    _Else -> 
      io:put_chars("FirstSpace: "),
      io:put_chars(integer_to_list(FirstSpace)),
      io:put_chars(string:sub_string(StrippedString, FirstSpace)),
      io:nl(),
      rec_num_words(string:sub_string(StrippedString, FirstSpace+1), N+1)
  end.

%% count up methods
count_up(0,N) -> 
  io:nl(),
  io:put_chars(string:concat("Done counting to ", integer_to_list(N))),
  io:nl();

count_up(N,M) ->
  io:put_chars(string:concat(integer_to_list(M+1), " ")),
  count_up(N-1,M+1).
