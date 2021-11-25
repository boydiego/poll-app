class PollsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :is_admin!, only: %i[new, create, edit, update, destroy]

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
    # @poll = Poll.new(poll_params)
    @poll = current_user.polls.build(poll_params)

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
  
  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy

    redirect_to root_path
  end
  
  private

  def poll_params
    params.require(:poll).permit(:title)
  end
  
end