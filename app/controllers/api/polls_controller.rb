class Api::PollsController < ApplicationController
  before_action :set_poll, only: [:show]
  caches_action :show, expires_in: 1.minutes

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.includes(:contestants).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poll_params
      params[:poll]
    end
end
