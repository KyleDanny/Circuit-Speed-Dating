class LobbiesController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
  end
end
