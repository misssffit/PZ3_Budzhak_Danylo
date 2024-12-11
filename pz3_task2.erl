-module(pz3_task2).
-export([words/1]).

words(BinText) ->
    words(BinText, <<>>, []).

words(<<>>, Acc, Words) -> 
    lists:reverse(Words); 
words(<<32, Rest/binary>>, Acc, Words) -> 
    case Acc of
        <<>> -> 
            words(Rest, <<>>, Words);
        _ -> 
            words(Rest, <<>>, [Acc | Words]) 
    end;
words(<<Char, Rest/binary>>, Acc, Words) ->
    words(Rest, <<Acc/binary, Char>>, Words). 
