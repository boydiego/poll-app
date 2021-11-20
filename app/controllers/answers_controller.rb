class AnswersController < ApplicationController
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