class Table3sController < ApplicationController
  before_action :set_table3, only: [:show, :edit, :update, :destroy]

  # GET /table3s
  # GET /table3s.json
  def index
    @table3s = Table3.all
  end

  # GET /table3s/1
  # GET /table3s/1.json
  def show
  end

  # GET /table3s/new
  def new
    @table3 = Table3.new
  end

  # GET /table3s/1/edit
  def edit
  end

  # POST /table3s
  # POST /table3s.json
  def create
    @table3 = Table3.new(table3_params)

    respond_to do |format|
      if @table3.save
        format.html { redirect_to @table3, notice: 'Table3 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @table3 }
      else
        format.html { render action: 'new' }
        format.json { render json: @table3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table3s/1
  # PATCH/PUT /table3s/1.json
  def update
    respond_to do |format|
      if @table3.update(table3_params)
        format.html { redirect_to @table3, notice: 'Table3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @table3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table3s/1
  # DELETE /table3s/1.json
  def destroy
    @table3.destroy
    respond_to do |format|
      format.html { redirect_to table3s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table3
      @table3 = Table3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table3_params
      params.require(:table3).permit(:name, :code)
    end
end
