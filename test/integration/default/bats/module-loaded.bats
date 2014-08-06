#!/usr/bin/env bats

@test "The xcache module is loaded" {
  php -m | grep XCache
}
