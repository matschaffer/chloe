Chloe
=====

A realtime web server that doesn't suck.

Installation
------------

- Get you some erlang (brew install)
- Get rebar (brew install or [start here](https://github.com/basho/rebar/wiki/Getting-started))
- clone this repo
- Run these commands
    cd Chloe
    rebar get-deps
    cd deps/yaws
    rebar compile
    cd -
    rebar compile
    erl -pa ebin -pa deps/yaws/ebin
- in erl run `chloe:start().`
- get sinatra (for the ruby demo app, gem install sinatra)
- in another terminal window, `ruby support/echo_server.rb`
- Point your browser at http://localhost:8888 and open up the javascript console
- In the console:

    ws = new WebSocket("ws://localhost:8888/updates");
    ws.onopen = function (m) { ws.send("Patch me through"); };
    ws.onmessage = function (m) { console.log(m.data) };

- Relish the awesome.
- To stop Chloe, enter "q()." back in erlang
- To stop the demo app, use Ctrl+C
