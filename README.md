# Fortnite

> Retrieve informations from Fortnite with fortniteapi.com API, with a lot of resource to use.

Resource enabled:

	- Daily store
	- Upcoming items
	- Items
	- User id
	- User stats
	- User matches
	- Challenges
	- Weapons

### Installation

```sh
	gem install fortnite
```

### How to use

```ruby
require 'fortnite'

fortnite = Fortnite.new

daily_store    = fortnite.daily_store
upcoming_items = fortnite.upcoming_items
items          = fortnite.items
user_id        = fortnite.user_id("nickname")
user_stats     = fortnite.user_stats("id")
user_matches   = fortnite.user_matches("id")
challenges     = fortnite.challenges("8")
weapons        = fortnite.weapons
server_status  = fortnite.server_status
```