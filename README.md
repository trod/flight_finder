# FlightFinder

## Description

Flight API with the only endpoint for searching the cheapest offer for a given parameters.

## Out of scope:
* Release, dockerisation & deployment
* Authentication for endpoint
* Telemetry, proper logging etc.
* Some nice things like credo, dialyzer, specs which make code better.
* Error handling: I chose "silent" api style which doesn't expose any errors but those a requester could address.


## Installation
  * Install dependencies with `mix deps.get`
  * Start server with `KLM_KEY="<add_klm_key_here>" BA_KEY="<add_ba_key_here>" MIX_ENV=prod mix phx.server`

## Tests
 Run tests with `mix test`
