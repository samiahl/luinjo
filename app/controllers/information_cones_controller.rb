class InformationConesController < ApplicationController
  before_action :set_information_cone, only: [:show, :edit, :update, :destroy]

  # GET /information_cones
  # GET /information_cones.json
  def index
    @information_cones = InformationCone.all
  end

  # GET /information_cones/1
  # GET /information_cones/1.json
  def show
    @posts = @information_cone.posts
  end

  # GET /information_cones/new
  def new
    @information_cone = InformationCone.new
  end

  # GET /information_cones/1/edit
  def edit
  end

  # POST /information_cones
  # POST /information_cones.json
  def create
    @information_cone = InformationCone.new(information_cone_params)

    respond_to do |format|
      if @information_cone.save
        format.html { redirect_to @information_cone, notice: 'Information cone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @information_cone }
      else
        format.html { render action: 'new' }
        format.json { render json: @information_cone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information_cones/1
  # PATCH/PUT /information_cones/1.json
  def update
    respond_to do |format|
      if @information_cone.update(information_cone_params)
        format.html { redirect_to @information_cone, notice: 'Information cone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @information_cone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_cones/1
  # DELETE /information_cones/1.json
  def destroy
    @information_cone.destroy
    respond_to do |format|
      format.html { redirect_to information_cones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information_cone
      @information_cone = InformationCone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def information_cone_params
      params.require(:information_cone).permit(:title, :description)
    end
end
