class Team
  attr_accessor :id, :creature, :name, :sport, :state
  def initialize(hash)
    @id = hash["id"]
    @creature = hash["creature"]
    @name = hash["name"]
    @sport = hash["sport"]
    @state = hash["state"]

  end
  def self.find(id)
  team_hash = Unirest.get("http://localhost:3000/api/v2/teams/#{id}.json").body
  @team = Team.new(team_hash)
  end
  def self.all
    team_hashes = Unirest.get("http://localhost:3000/api/v2/teams.json").body
    @teams = []
    team_hashes.each do |employee_hash|
      @teams << Team.new(employee_hash)
    end
    @teams
  end
  def destroy
    team_hash = Unirest.delete("http://localhost:3000/api/v2/teams/#{id}.json").body
  end
  def self.create
    team_hash = Unirest.post("http://localhost:3000/api/v2/teams.json", :headers => {"Accept"=> "application/json"}, :parameters => {:creature => params[:creature], :name => params[:name], :state => params[:state], :sport => params[:sport]}).body
     @team = Team.new(@team_hash)
  end
end