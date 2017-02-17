class Team
  attr_accessor :id, :creature, :name, :sport, :state
  def initialize(hash)
    @id = hash["id"]
    @creature = hash["creature"]
    @name = hash["name"]
    @sport = hash["sport"]
    @state = hash["state"]

  end

end