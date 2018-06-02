class PrepairsController < ApplicationController
  before_action :set_prepair, only: [:show, :edit, :update, :destroy]

  # GET /prepairs
  # GET /prepairs.json
  def index
    @prepairs = Prepair.all
  end

  # GET /prepairs/1
  # GET /prepairs/1.json
  def show
  end

  # GET /prepairs/new
  def new
    @prepair = Prepair.new
  end

  # GET /prepairs/1/edit
  def edit
  end

  # POST /prepairs
  # POST /prepairs.json
  def create
    @prepair = Prepair.new(prepair_params)

    respond_to do |format|
      if @prepair.save
        format.html { redirect_to @prepair, notice: 'Prepair was successfully created.' }
        format.json { render :show, status: :created, location: @prepair }
      else
        format.html { render :new }
        format.json { render json: @prepair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prepairs/1
  # PATCH/PUT /prepairs/1.json
  def update
    respond_to do |format|
      if @prepair.update(prepair_params)
        format.html { redirect_to @prepair, notice: 'Prepair was successfully updated.' }
        format.json { render :show, status: :ok, location: @prepair }
      else
        format.html { render :edit }
        format.json { render json: @prepair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prepairs/1
  # DELETE /prepairs/1.json
  def destroy
    @prepair.destroy
    respond_to do |format|
      format.html { redirect_to prepairs_url, notice: 'Prepair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prepair
      @prepair = Prepair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prepair_params
      params.require(:prepair).permit(:title, :content)
    end
end
