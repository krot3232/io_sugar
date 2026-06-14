-define(i(Format, Args),io:format(Format,Args)).
-define(i(Format),io:format(Format)).

-define(ih(Bin),io:format("HEX:~s~n",[?hex(Bin)])).
 -if(?OTP_RELEASE >= 24).
     -define(hex(Target), 
        (fun() ->
            Bin = case is_list(Target) of 
                true -> list_to_binary(Target); 
                false -> Target 
            end,
            binary:encode_hex(Bin)
        end)()
    ).
 -else.
    -define(hex(Target), 
        (fun() ->
            Bin = case is_list(Target) of 
                true -> list_to_binary(Target); 
                false -> Target 
            end,
            << <<(if N < 10 -> N + $0; true -> N - 10 + $A end):8>> || <<N:4>> <= Bin >>
        end)()
    ).
-endif.
 
%black
-define(qi(Format, Args),io:format("\e[0;30m"++Format++"\e[0m~n",Args)).
-define(qi(Format),io:format("\e[0;30m"++Format++"\e[0m~n")).
%red
-define(ri(Format, Args),io:format("\e[0;31m"++Format++"\e[0m~n",Args)).
-define(ri(Format),io:format("\e[0;31m"++Format++"\e[0m~n")).
%green
-define(gi(Format, Args),io:format("\e[0;32m"++Format++"\e[0m~n",Args)).
-define(gi(Format),io:format("\e[0;32m"++Format++"\e[0m~n")).
%yellow
-define(yi(Format, Args),io:format("\e[0;33m"++Format++"\e[0m~n",Args)).
-define(yi(Format),io:format("\e[0;33m"++Format++"\e[0m~n")).
%blue
-define(bi(Format, Args),io:format("\e[0;34m"++Format++"\e[0m~n",Args)).
-define(bi(Format),io:format("\e[0;34m"++Format++"\e[0m~n")).
%magenta
-define(mi(Format, Args),io:format("\e[0;35m"++Format++"\e[0m~n",Args)).
-define(mi(Format),io:format("\e[0;35m"++Format++"\e[0m~n")).
%cyan
-define(ci(Format, Args),io:format("\e[0;36m"++Format++"\e[0m~n",Args)).
-define(ci(Format),io:format("\e[0;36m"++Format++"\e[0m~n")).
%white
-define(wi(Format, Args),io:format("\e[0;37m"++Format++"\e[0m~n",Args)).
-define(wi(Format),io:format("\e[0;37m"++Format++"\e[0m~n")).

%black background
-define(qu(Format, Args),io:format("\e[0;40m"++Format++"\e[0m~n",Args)).
-define(qu(Format),io:format("\e[0;40m"++Format++"\e[0m~n")).
%red background
-define(ru(Format, Args),io:format("\e[0;41m"++Format++"\e[0m~n",Args)).
-define(ru(Format),io:format("\e[0;41m"++Format++"\e[0m~n")).
%green background
-define(gu(Format, Args),io:format("\e[0;42m"++Format++"\e[0m~n",Args)).
-define(gu(Format),io:format("\e[0;42m"++Format++"\e[0m~n")).
%yellow background
-define(yu(Format, Args),io:format("\e[0;43m"++Format++"\e[0m~n",Args)).
-define(yu(Format),io:format("\e[0;43m"++Format++"\e[0m~n")).
%blue background
-define(bu(Format, Args),io:format("\e[0;44m"++Format++"\e[0m~n",Args)).
-define(bu(Format),io:format("\e[0;44m"++Format++"\e[0m~n")).
%magenta background
-define(mu(Format, Args),io:format("\e[0;45m"++Format++"\e[0m~n",Args)).
-define(mu(Format),io:format("\e[0;45m"++Format++"\e[0m~n")).
%cyan background
-define(cu(Format, Args),io:format("\e[0;46m"++Format++"\e[0m~n",Args)).
-define(cu(Format),io:format("\e[0;46m"++Format++"\e[0m~n")).
%white background
-define(wu(Format, Args),io:format("\e[0;47m"++Format++"\e[0m~n",Args)).
-define(wu(Format),io:format("\e[0;47m"++Format++"\e[0m~n")).

%%light black
-define(qj(Format, Args),io:format("\e[0;90m"++Format++"\e[0m~n",Args)).
-define(qj(Format),io:format("\e[0;90m"++Format++"\e[0m~n")).
%light red
-define(rj(Format, Args),io:format("\e[0;91m"++Format++"\e[0m~n",Args)).
-define(rj(Format),io:format("\e[0;91m"++Format++"\e[0m~n")).
%light green
-define(gj(Format, Args),io:format("\e[0;92m"++Format++"\e[0m~n",Args)).
-define(gj(Format),io:format("\e[0;92m"++Format++"\e[0m~n")).
%light yellow
-define(yj(Format, Args),io:format("\e[0;93m"++Format++"\e[0m~n",Args)).
-define(yj(Format),io:format("\e[0;93m"++Format++"\e[0m~n")).
%light blue
-define(bj(Format, Args),io:format("\e[0;94m"++Format++"\e[0m~n",Args)).
-define(bj(Format),io:format("\e[0;94m"++Format++"\e[0m~n")).
%magenta
-define(mj(Format, Args),io:format("\e[0;95m"++Format++"\e[0m~n",Args)).
-define(mj(Format),io:format("\e[0;95m"++Format++"\e[0m~n")).
%light cyan
-define(cj(Format, Args),io:format("\e[0;96m"++Format++"\e[0m~n",Args)).
-define(cj(Format),io:format("\e[0;96m"++Format++"\e[0m~n")).
%light white
-define(wj(Format, Args),io:format("\e[0;97m"++Format++"\e[0m~n",Args)).
-define(wj(Format),io:format("\e[0;97m"++Format++"\e[0m~n")).

%%light black background
-define(qh(Format, Args),io:format("\e[0;100m"++Format++"\e[0m~n",Args)).
-define(qh(Format),io:format("\e[0;100m"++Format++"\e[0m~n")).
%light red background
-define(rh(Format, Args),io:format("\e[0;101m"++Format++"\e[0m~n",Args)).
-define(rh(Format),io:format("\e[0;101m"++Format++"\e[0m~n")).
%light green background
-define(gh(Format, Args),io:format("\e[0;102m"++Format++"\e[0m~n",Args)).
-define(gh(Format),io:format("\e[0;102m"++Format++"\e[0m~n")).
%light yellow background
-define(yh(Format, Args),io:format("\e[0;103m"++Format++"\e[0m~n",Args)).
-define(yh(Format),io:format("\e[0;103m"++Format++"\e[0m~n")).
%light blue background
-define(bh(Format, Args),io:format("\e[0;104m"++Format++"\e[0m~n",Args)).
-define(bh(Format),io:format("\e[0;104m"++Format++"\e[0m~n")).
%magenta background
-define(mh(Format, Args),io:format("\e[0;105m"++Format++"\e[0m~n",Args)).
-define(mh(Format),io:format("\e[0;105m"++Format++"\e[0m~n")).
%light cyan background
-define(ch(Format, Args),io:format("\e[0;106m"++Format++"\e[0m~n",Args)).
-define(ch(Format),io:format("\e[0;106m"++Format++"\e[0m~n")).
%light white background
-define(wh(Format, Args),io:format("\e[0;107m"++Format++"\e[0m~n",Args)).
-define(wh(Format),io:format("\e[0;107m"++Format++"\e[0m~n")).
