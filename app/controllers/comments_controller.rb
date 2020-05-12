class CommentsController < ApplicationController
  def create
     Comment.create(text: params[:text], game_id: params[:game_id], user_id: current_user.id)
  end
end
