class Eat24signinsController < ApplicationController
  before_action :set_eat24signin, only: [:show, :edit, :update, :destroy]

  # GET /eat24signins
  # GET /eat24signins.json
  def index
    @eat24signins = Eat24signin.all
  end

  # GET /eat24signins/1
  # GET /eat24signins/1.json
  def show
  end

  # GET /eat24signins/new
  def new
    @eat24signin = Eat24signin.new
  end

  # GET /eat24signins/1/edit
  def edit
  end

  # POST /eat24signins
  # POST /eat24signins.json
  def create
    @eat24signin = Eat24signin.new(eat24signin_params)

    respond_to do |format|
      if @eat24signin.save
        format.html { redirect_to @eat24signin, notice: 'Eat24signin was successfully created.' }
        format.json { render :show, status: :created, location: @eat24signin }
      else
        format.html { render :new }
        format.json { render json: @eat24signin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eat24signins/1
  # PATCH/PUT /eat24signins/1.json
  def update
    respond_to do |format|
      if @eat24signin.update(eat24signin_params)
        format.html { redirect_to @eat24signin, notice: 'Eat24signin was successfully updated.' }
        format.json { render :show, status: :ok, location: @eat24signin }
      else
        format.html { render :edit }
        format.json { render json: @eat24signin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eat24signins/1
  # DELETE /eat24signins/1.json
  def destroy
    @eat24signin.destroy
    respond_to do |format|
      format.html { redirect_to eat24signins_url, notice: 'Eat24signin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eat24signin
      @eat24signin = Eat24signin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eat24signin_params
      params.require(:eat24signin).permit(:firstname, :lastname, :emailid, :emailidconformation, :password)
    end
end
