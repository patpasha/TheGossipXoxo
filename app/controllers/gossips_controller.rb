class GossipsController < ApplicationController

  def index
  	@gossips = Gossip.all
  end
  
  def new
  	@gossip = Gossip.new
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def create
  	@gossip = Gossip.create(parameters)

  	p @gossip
  	redirect_to gossips_path(@gossip.id)
  end

  def edit
  	@gossip = Gossip.find(params[:id])
	@gossip.save
  end

  def update
  	@gossip = Gossip.find(params[:id])
  	@gossip.update(parameters)
  	redirect_to gossip_path(@gossip.id)
  end 

  def destroy
  	@gossip = Gossip.find(params[:id])
  	@gossip.delete
  	redirect_to gossips_path
  end

  private
  def parameters
  	params.require(:gossip).permit(:anonymous_gossiper, :content)
  end

end
