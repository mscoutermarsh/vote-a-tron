class Api::VotesController < ApplicationController
  # POST /api/polls/:id/contestants/:id/votes.json
  def create
    @api_vote = Api::Vote.new(api_vote_params)

    respond_to do |format|
      if @api_vote.save
        format.json { render action: 'show', status: :created, location: @api_vote }
      else
        format.json { render json: @api_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def api_vote_params
      params[:api_vote]
    end
end
