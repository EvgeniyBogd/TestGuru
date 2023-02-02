class Admin::BadgesController < ApplicationController
  before_action :set_badge, only: %i[ show edit update destroy ]
  before_action :set_rule, only: %i[ new edit update create ]

  # GET /badges or /badges.json
  def index
    @badges = Badge.all
  end

  # GET /badges/1 or /badges/1.json
  def show
  end

  # GET /badges/new
  def new
    @badge = Badge.new
  end

  # GET /badges/1/edit
  def edit
  end

  # POST /badges or /badges.json
  def create
    @badge = Badge.new(badge_params)

      if @badge.save
        redirect_to admin_badges_path, notice: t('.sucess')
      else
        render :index
    end
  end

  # PATCH/PUT /badges/1 or /badges/1.json
  def update
    respond_to do |format|
      if @badge.save
        redirect_to admin_badges_path, notice: t('.sucess')
      else
        render :edit
      end  
    end
  end

  # DELETE /badges/1 or /badges/1.json
  def destroy
    @badge.destroy

    respond_to do |format|
      format.html { redirect_to badges_url, notice: "Badge was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badge
      @badge = Badge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def badge_params
      params.require(:badge).permit(:title, :image, :rule ,:rule_value, :discription)
    end

    def set_rule
      @rules = Badge::RULES
    end
end
