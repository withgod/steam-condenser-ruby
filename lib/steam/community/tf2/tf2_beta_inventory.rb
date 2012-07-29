# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2011-2012, Sebastian Staudt

require 'steam/community/game_inventory'
require 'steam/community/tf2/tf2_item'

module SteamCondenser

  # Represents the inventory (aka. Backpack) of a player of the public Team
  # Fortress 2 beta
  #
  # @author Sebastian Staudt
  class TF2BetaInventory < GameInventory

    # Creates a new inventory object for the given SteamID64 in the Team
    # Fortress 2 beta (App ID 520)
    #
    # @param [Fixnum] steam_id64 The 64bit SteamID of the player to get the
    #        inventory for
    # @macro cacheable
    def initialize(steam_id64)
      super 520, steam_id64
    end

    @@item_class = TF2Item

  end
end
