-module(pz3_task3).
-export([split/2]).

split(BinText, Separator) ->
    re:split(BinText, Separator, [{return, binary}]).

