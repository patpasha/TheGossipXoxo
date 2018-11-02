class CommentsController < ApplicationController

  def new
  	@comment = Comment.new
  end

  def create
  	@gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy
    redirect_to gossips_path(@gossip)
  end
 
  private
  def comment_params
  	params.require(:comment).permit(:anonymous_commentor, :body)
  end




end