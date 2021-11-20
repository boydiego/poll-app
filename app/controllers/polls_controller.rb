class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(poll_params)

    if @poll.save
      redirect_to @poll
    else
      render :new
    end
  end

  def edit
    @poll = Poll.find(params[:id])
  end
  
  def update
    @poll = Poll.find(params[:id])

    if @poll.update(poll_params)
      redirect_to @poll
    else
      render :edit
    end
  end
  
  private

  def poll_params
    params.require(:poll).permit(:title)
  end
  
end