class MinesController < ApplicationController
  
  def index
    @usr = current_user.name
    @answers = Answer.where(user_id: current_user.id)
    @drills = Drill.where(user_id: current_user.id)
    @titles = Title.where(user_id: current_user.id)
    @prof = Profile.where(user_id: current_user.id)
  end
  
  def destroy
    post = Profile.find(params[:id])
    post.destroy
    redirect_to mines_path
  end
  
end