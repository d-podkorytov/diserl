-module(diserl).
-export([dump/1]).

dump(Fn)->
 {ok,F}=file:open(Fn++".dmp",[write]),
 io:format(F,"~p.~n",[beam_disasm:file(Fn)]),
 file:close(F).
