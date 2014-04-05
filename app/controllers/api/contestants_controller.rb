class Api::ContestantsController < ApplicationController
  before_action :set_api_contestant, only: [:show, :edit, :update, :destroy]

  # GET /api/contestants
  # GET /api/contestants.json
  def index
    @api_contestants = Api::Contestant.all
  end

  # GET /api/contestants/1
  # GET /api/contestants/1.json
  def show
  end

  # GET /api/contestants/new
  def new
    @api_contestant = Api::Contestant.new
  end

  # GET /api/contestants/1/edit
  def edit
  end

  # POST /api/contestants
  # POST /api/contestants.json
  def create
    @api_contestant = Api::Contestant.new(api_contestant_params)

    respond_to do |format|
      if @api_contestant.save
        format.html { redirect_to @api_contestant, notice: 'Contestant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_contestant }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/contestants/1
  # PATCH/PUT /api/contestants/1.json
  def update
    respond_to do |format|
      if @api_contestant.update(api_contestant_params)
        format.html { redirect_to @api_contestant, notice: 'Contestant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/contestants/1
  # DELETE /api/contestants/1.json
  def destroy
    @api_contestant.destroy
    respond_to do |format|
      format.html { redirect_to api_contestants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_contestant
      @api_contestant = Api::Contestant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_contestant_params
      params[:api_contestant]
    end
end
