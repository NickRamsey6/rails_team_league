class TeamsController < ApplicationController

  def index
    @teams = Team.all
    render :index
    # Code for listing all teams goes here.
  end

  def new
    @team = Team.new
    render :new
    # Code for new team form goes here.
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
    # Code for creating a new team goes here.
  end

  def edit
    @team = Team.find(params[:id])
    render :edit
    # Code for edit team form goes here.
  end

  def show
    @team = Team.find(params[:id])
    render :show
    # Code for showing a single team goes here.
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to teams_path
    else
      render :edit
    end
    # Code for updating an team goes here.
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
    # Code for deleting an team goes here.
  end

  private
    def team_params
      params.require(:team).permit(:name, :coordinator)
    end
end
