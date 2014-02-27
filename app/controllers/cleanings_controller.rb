class CleaningsController < ApplicationController
  before_action :set_cleaning, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:account, :show, :new, :create, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]

  def account
    @cleanings = Cleaning.where(user: current_user).order("created_at DESC").limit(4)
  end

  # GET /cleanings
  # GET /cleanings.json
  def index
    @cleanings = Cleaning.all.order("created_at DESC")
  end

  # GET /cleanings/1
  # GET /cleanings/1.json
  def show
  end

  # GET /cleanings/new
  def new
    @cleaning = Cleaning.new
  end

  # GET /cleanings/1/edit
  def edit
  end

  # POST /cleanings
  # POST /cleanings.json
  def create
    @cleaning = Cleaning.new(cleaning_params)
    @cleaning.user_id = current_user.id

    respond_to do |format|
      if @cleaning.save
        format.html { redirect_to account_path, notice: 'Cleaning was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cleaning }
      else
        format.html { render action: 'new' }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleanings/1
  # PATCH/PUT /cleanings/1.json
  def update
    respond_to do |format|
      if @cleaning.update(cleaning_params)
        format.html { redirect_to @cleaning, notice: 'Cleaning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleanings/1
  # DELETE /cleanings/1.json
  def destroy
    @cleaning.destroy
    respond_to do |format|
      format.html { redirect_to account_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning
      @cleaning = Cleaning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaning_params
      params.require(:cleaning).permit(:month, :day, :hour, :minute, :ampm)
    end

    def check_user
      if current_user != @cleaning.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else."
      end
    end    
end
