class Api::VotesController < ApplicationController
  before_action :set_api_vote, only: [:show, :edit, :update, :destroy]

  # GET /api/votes
  # GET /api/votes.json
  def index
    @api_votes = Api::Vote.all
  end

  # GET /api/votes/1
  # GET /api/votes/1.json
  def show
  end

  # GET /api/votes/new
  def new
    @api_vote = Api::Vote.new
  end

  # GET /api/votes/1/edit
  def edit
  end

  # POST /api/votes
  # POST /api/votes.json
  def create
    @api_vote = Api::Vote.new(api_vote_params)

    respond_to do |format|
      if @api_vote.save
        format.html { redirect_to @api_vote, notice: 'Vote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_vote }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/votes/1
  # PATCH/PUT /api/votes/1.json
  def update
    respond_to do |format|
      if @api_vote.update(api_vote_params)
        format.html { redirect_to @api_vote, notice: 'Vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/votes/1
  # DELETE /api/votes/1.json
  def destroy
    @api_vote.destroy
    respond_to do |format|
      format.html { redirect_to api_votes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_vote
      @api_vote = Api::Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_vote_params
      params[:api_vote]
    end
end
