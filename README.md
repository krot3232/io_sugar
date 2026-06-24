io_sugar
=====
![io_sugar](https://raw.githubusercontent.com/krot3232/logos/main/io_sugar.jpg)

Erlang macros for io:format.

[![Erlang](https://img.shields.io/badge/Erlang%2FOTP-R15+-deeppink?style=flat-square&logo=erlang&logoColor=ffffff)](https://www.erlang.org)
[![Hex Version](https://img.shields.io/hexpm/v/io_sugar.svg?style=flat-square)](https://hex.pm/packages/io_sugar)

## How to use
1. `rebar3.config` add deps `io_sugar` and *erl_opts debug*:
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
    ?ri("red text").
    ?ri("red ~p ~s",[123,"qwe"]).

    %% Name macros = color(q|r|g|y|b|m|c|w) + type(i|u|j|h)
    % color = q - black, r - red, g - green, y - yellow, b - blue, m - magenta, c - cyan, w - white
    % type = i - standard color, u - standard color background, j - light color, h - light color background

    ?qi("qi - black text"),
    ?qu("qu - black text_background"),
    ?qj("qj - black text_light"),
    ?qh("qh - black text_light_background"),
    ?ri("ri - red text"),
    ?ru("ru - red text_background"),
    ?rj("rj - red text_light"),
    ?rh("rh - red text_light_background"),
    ?gi("gi - green text"),
    ?gu("gu - green text_background"),
    ?gj("gj - green text_light"),
    ?gh("gh - green text_light_background"),
    ?yi("yi - yellow text"),
    ?yu("yu - yellow text_background"),
    ?yj("yj - yellow text_light"),
    ?yh("yh - yellow text_light_background"),
    ?bi("bi - blue text"),
    ?bu("bu - blue text_background"),
    ?bj("bj - blue text_light"),
    ?bh("bh - blue text_light_background"),
    ?mi("mi - magenta text"),
    ?mu("mu - magenta text_background"),
    ?mj("mj - magenta text_light"),
    ?mh("mh - magenta text_light_background"),
    ?ci("ci - cyan text"),
    ?cu("cu - cyan text_background"),
    ?cj("cj - cyan text_light"),
    ?ch("ch - cyan text_light_background"),
    ?wi("wi - white text"),
    ?wu("wu - white text_background"),
    ?wj("wj - white text_light"),
    ?wh("wh - white text_light_background").
```
---
#### Color macros:  
<img src="https://raw.githubusercontent.com/krot3232/logos/main/io_sugar_example.jpg" width="200" >
