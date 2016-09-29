class BeerGeeksController < ApplicationController
  before_action :set_beer_geek, only: [:show, :edit, :update, :destroy]

  # GET /beer_geeks
  # GET /beer_geeks.json
  def index
    @beer_geeks = BeerGeek.all
  end

  # GET /beer_geeks/1
  # GET /beer_geeks/1.json
  def show
  end

  # GET /beer_geeks/new
  def new
    @beer_geek = BeerGeek.new
  end

  # GET /beer_geeks/1/edit
  def edit
  end

  # POST /beer_geeks
  # POST /beer_geeks.json
  def create
    @beer_geek = BeerGeek.new(beer_geek_params)

    respond_to do |format|
      if @beer_geek.save
        format.html { redirect_to @beer_geek, notice: 'Beer geek was successfully created.' }
        format.json { render :show, status: :created, location: @beer_geek }
      else
        format.html { render :new }
        format.json { render json: @beer_geek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_geeks/1
  # PATCH/PUT /beer_geeks/1.json
  def update
    respond_to do |format|
      if @beer_geek.update(beer_geek_params)
        format.html { redirect_to @beer_geek, notice: 'Beer geek was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_geek }
      else
        format.html { render :edit }
        format.json { render json: @beer_geek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_geeks/1
  # DELETE /beer_geeks/1.json
  def destroy
    @beer_geek.destroy
    respond_to do |format|
      format.html { redirect_to beer_geeks_url, notice: 'Beer geek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_geek
      @beer_geek = BeerGeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_geek_params
      params.require(:beer_geek).permit(:nom, :desc)
    end
end
