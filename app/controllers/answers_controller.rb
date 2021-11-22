class AnswersController < ApplicationController

  def upvote
    @poll = Poll.find(params[:id])
    @answer = @poll.answers.find(params[:poll_id])
    if current_user.voted_up_on? @answer
      @answer.unvote_by current_user
    else
      @answer.upvote_by current_user
    end
    render "vote.js.erb"
  end
  

  def create
    @poll = Poll.find(params[:poll_id])
    @answer = @poll.answers.create(answer_params)
    redirect_to poll_path(@poll)
  end

  def destroy
    @poll = Poll.find(params[:poll_id])
    @answer = @poll.answers.find(params[:id])
    @answer.destroy
    redirect_to poll_path(@poll)
  end
  
  private

  def answer_params
    params.require(:answer).permit(:title)
  end
  
end