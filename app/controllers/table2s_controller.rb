class Table2sController < ApplicationController
  before_action :set_table2, only: [:show, :edit, :update, :destroy]

  # GET /table2s
  # GET /table2s.json
  def index
    @table2s = Table2.all
  end

  # GET /table2s/1
  # GET /table2s/1.json
  def show
  end

  # GET /table2s/new
  def new
    @table2 = Table2.new
  end

  # GET /table2s/1/edit
  def edit
  end

  # POST /table2s
  # POST /table2s.json
  def create
    @table2 = Table2.new(table2_params)

    respond_to do |format|
      if @table2.save
        format.html { redirect_to @table2, notice: 'Table2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @table2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @table2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table2s/1
  # PATCH/PUT /table2s/1.json
  def update
    respond_to do |format|
      if @table2.update(table2_params)
        format.html { redirect_to @table2, notice: 'Table2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @table2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table2s/1
  # DELETE /table2s/1.json
  def destroy
    @table2.destroy
    respond_to do |format|
      format.html { redirect_to table2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table2
      @table2 = Table2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table2_params
      params.require(:table2).permit(:name, :code)
    end
end
