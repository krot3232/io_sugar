io_sugar
=====
![io_sugar](https://raw.githubusercontent.com/krot3232/logos/main/io_sugar.jpg)

Erlang marcros for io:format.

[![Erlang](https://img.shields.io/badge/Erlang%2FOTP-R15+-deeppink?style=flat-square&logo=erlang&logoColor=ffffff)](https://www.erlang.org)
[![Hex Version](https://img.shields.io/hexpm/v/io_sugar.svg?style=flat-square)](https://hex.pm/packages/io_sugar)

## How to use
1.  rebar3.config add deps io_sugar and erl_opts debug:
``` erlang
    {erl_opts, [{d, 'debug'}]}.

    {deps, [
        io_sugar
    ]}.
```
2. include hrl file:
``` erlang
    -include_lib("io_sugar/include/dbg.hrl").

    %% or io.hrl if not use debug
    -include_lib("io_sugar/include/io.hrl").
```
3. use macros:
``` erlang
    %% Text
    ?i("i").
    ?i("i ~p~n",[123]).

    %% Hex
    ?ih("123").
    ?hex("123").

    %% Color text:
    %% name macros = color text + type
    %% ?q|r|g|y|b|m|c|w + i|u|j|h
    %type = i - standard color, u - standard color background, j - light color, h - light color background

    ?ri("red").
    ?ri("red ~p",[123]).
    ?ru("red background").
    ?rj("light red").
    ?rh("light red background").

    ?gi("green").
    ?gu("green background").
    ?gj("light green").
    ?gh("light green background").

    ?bi("blue").
    ?bu("blue background").
    ?bj("light blue").
    ?bh("light blue background").

    ?qi( " qi "),
    ?qu( " qu "),
    ?qj( " qj "),
    ?qh( " qh "),
    ?ri( " ri "),
    ?ru( " ru "),
    ?rj( " rj "),
    ?rh( " rh "),
    ?gi( " gi "),
    ?gu( " gu "),
    ?gj( " gj "),
    ?gh( " gh "),
    ?yi( " yi "),
    ?yu( " yu "),
    ?yj( " yj "),
    ?yh( " yh "),
    ?bi( " bi "),
    ?bu( " bu "),
    ?bj( " bj "),
    ?bh( " bh "),
    ?mi( " mi "),
    ?mu( " mu "),
    ?mj( " mj "),
    ?mh( " mh "),
    ?ci( " ci "),
    ?cu( " cu "),
    ?cj( " cj "),
    ?ch( " ch "),
    ?wi( " wi "),
    ?wu( " wu "),
    ?wj( " wj "),
    ?wh( " wh ").
```
