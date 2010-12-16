-module(chloe_socketio_protocol_test).

-include_lib("eunit/include/eunit.hrl").

parse_message_with_empty_realm_test() ->
    {ok, Type, Realm, Data} = chloe_socketio_protocol:parse(<<"1:6::hello,">>),
    message = Type,
    ""      = Realm,
    "hello" = Data.

pack_message_test() ->
    "1:6::hello," = chloe_socketio_protocol:pack(message, "", "hello").

pack_handshake_test() ->
    "3:3:256," = chloe_socketio_protocol:pack(handshake, "256").
