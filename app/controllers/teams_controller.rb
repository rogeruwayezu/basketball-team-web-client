class TeamsController < ApplicationController
  def index
    @teams = Unirest.get("http://localhost:3000/api/v2/teams.json").body
  end
  def show
    @team = Unirest.get("http://localhost:3000/api/v2/teams/#{params[:id]}.json").body
  end
  def new

  end
  def create
    @team = Unirest.post("http://localhost:3000/api/v2/teams.json", :headers => {"Accept"=> "application/json"}, :parameters => {:creature => params[:creature], :name => params[:name], :state => params[:state], :sport => params[:sport]}).body
      redirect_to "/teams/#{@team['id']}"

  end
  def edit

  end
  def update

  end
  def destroy

  end
end
