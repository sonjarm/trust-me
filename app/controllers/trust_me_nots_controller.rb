class TrustMeNotsController < ApplicationController
  before_action :set_trust_me_not, only: [:show, :edit, :update, :destroy]

  # GET /trust_me_nots
  # GET /trust_me_nots.json
  def index
    @trust_me_nots = TrustMeNot.all
  end

  # GET /trust_me_nots/1
  # GET /trust_me_nots/1.json
  def show
  end

  # GET /trust_me_nots/new
  def new
    @trust_me_not = TrustMeNot.new
  end

  # GET /trust_me_nots/1/edit
  def edit
  end

  # POST /trust_me_nots
  # POST /trust_me_nots.json
  def create
    @trust_me_not = TrustMeNot.new(trust_me_not_params)

    respond_to do |format|
      if @trust_me_not.save
        format.html { redirect_to @trust_me_not, notice: 'Trust me not was successfully created.' }
        format.json { render :show, status: :created, location: @trust_me_not }
      else
        format.html { render :new }
        format.json { render json: @trust_me_not.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trust_me_nots/1
  # PATCH/PUT /trust_me_nots/1.json
  def update
    respond_to do |format|
      if @trust_me_not.update(trust_me_not_params)
        format.html { redirect_to @trust_me_not, notice: 'Trust me not was successfully updated.' }
        format.json { render :show, status: :ok, location: @trust_me_not }
      else
        format.html { render :edit }
        format.json { render json: @trust_me_not.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trust_me_nots/1
  # DELETE /trust_me_nots/1.json
  def destroy
    @trust_me_not.destroy
    respond_to do |format|
      format.html { redirect_to trust_me_nots_url, notice: 'Trust me not was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trust_me_not
      @trust_me_not = TrustMeNot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trust_me_not_params
      params.require(:trust_me_not).permit(:title, :notes, :due, :done)
    end
end
