%%%=============================================================================
%%% Copyright 2011, Travelping GmbH <info@travelping.com>
%%% Copyright 2013, Tobias Schlager <schlagert@github.com>
%%%
%%% Permission to use, copy, modify, and/or distribute this software for any
%%% purpose with or without fee is hereby granted, provided that the above
%%% copyright notice and this permission notice appear in all copies.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
%%% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
%%% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
%%% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
%%% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
%%% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
%%% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
%%%=============================================================================

-ifndef(syslog_hrl_).
-define(syslog_hrl_, 1).

%%%=============================================================================
%%% The syslog report record.
%%%=============================================================================

-record(syslog_report, {
          severity  :: 0..7,
          facility  :: 0..23,
          timestamp :: erlang:timestamp(),
          hostname  :: string(),
          domain    :: string(),
          appname   :: string(),
          beam_pid  :: string(),
          pid       :: string(),
          bom       :: binary(),
          msg       :: binary()}).

%%%=============================================================================
%%% Defines for severity integer values.
%%%=============================================================================

-define(SYSLOG_CRASH, -1).
-define(SYSLOG_EMERGENCY, 0).
-define(SYSLOG_ALERT, 1).
-define(SYSLOG_CRITICAL, 2).
-define(SYSLOG_ERROR, 3).
-define(SYSLOG_WARNING, 4).
-define(SYSLOG_NOTICE, 5).
-define(SYSLOG_INFO, 6).
-define(SYSLOG_DEBUG, 7).

%%%=============================================================================
%%% Define for application internal error logging.
%%%=============================================================================

-define(ERR(Fmt, Args), io:format(standard_error, Fmt, Args)).

%%%=============================================================================
%%% Defines the default Syslog facility.
%%%=============================================================================

-define(SYSLOG_FACILITY, daemon).

-endif. %% syslog_hrl_
