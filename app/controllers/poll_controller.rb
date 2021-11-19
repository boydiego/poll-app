class PollController < ApplicationController
  def index
    @polls = Poll.all
  end
end