class AnswersController < ApplicationController

  def upvote
    @poll = Poll.find(params[:id])
    @answer = @poll.answers.find(params[:poll_id])

    if user_signed_in?
      flash.notice = "Thank you for voting."
      @answer.upvote_by current_user
    end

    render "vote.js.erb"
  end
  
  def create
    @poll = Poll.find(params[:poll_id])
    @answer = @poll.answers.create(answer_params)
    render "_form.html.erb"
    # redirect_to poll_path(@poll)
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