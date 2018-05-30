class AtheletesController < ApplicationController
  before_action :set_athelete, only: [:show, :edit, :update, :destroy]

  # GET /atheletes
  # GET /atheletes.json
  def index
    @atheletes = Athelete.all
  end

  # GET /atheletes/1
  # GET /atheletes/1.json
  def show
  end

  # GET /atheletes/new
  def new
    @athelete = Athelete.new
  end

  # GET /atheletes/1/edit
  def edit
  end

  # POST /atheletes
  # POST /atheletes.json
  def create
    @athelete = Athelete.new(athelete_params)

    respond_to do |format|
      if @athelete.save
        format.html { redirect_to @athelete, notice: 'Athelete was successfully created.' }
        format.json { render :show, status: :created, location: @athelete }
      else
        format.html { render :new }
        format.json { render json: @athelete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atheletes/1
  # PATCH/PUT /atheletes/1.json
  def update
    respond_to do |format|
      if @athelete.update(athelete_params)
        format.html { redirect_to @athelete, notice: 'Athelete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athelete }
      else
        format.html { render :edit }
        format.json { render json: @athelete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atheletes/1
  # DELETE /atheletes/1.json
  def destroy
    @athelete.destroy
    respond_to do |format|
      format.html { redirect_to atheletes_url, notice: 'Athelete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athelete
      @athelete = Athelete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athelete_params
      params.require(:athelete).permit(:first_name, :last_name, :age)
    end
end
