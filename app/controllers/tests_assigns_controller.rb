class TestsAssignsController < ApplicationController
  before_action :set_tests_assign, only: [:show, :edit, :update, :destroy]

  # GET /tests_assigns
  # GET /tests_assigns.json
  def index
    @tests_assigns = TestsAssign.all
  end

  # GET /tests_assigns/1
  # GET /tests_assigns/1.json
  def show
  end

  # GET /tests_assigns/new
  def new
    @tests_assign = TestsAssign.new
  end

  # GET /tests_assigns/1/edit
  def edit
  end

  # POST /tests_assigns
  # POST /tests_assigns.json
  def create
    @tests_assign = TestsAssign.new(tests_assign_params)

    respond_to do |format|
      if @tests_assign.save
        format.html { redirect_to @tests_assign, notice: 'Tests assign was successfully created.' }
        format.json { render :show, status: :created, location: @tests_assign }
      else
        format.html { render :new }
        format.json { render json: @tests_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests_assigns/1
  # PATCH/PUT /tests_assigns/1.json
  def update
    respond_to do |format|
      if @tests_assign.update(tests_assign_params)
        format.html { redirect_to @tests_assign, notice: 'Tests assign was successfully updated.' }
        format.json { render :show, status: :ok, location: @tests_assign }
      else
        format.html { render :edit }
        format.json { render json: @tests_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests_assigns/1
  # DELETE /tests_assigns/1.json
  def destroy
    @tests_assign.destroy
    respond_to do |format|
      format.html { redirect_to tests_assigns_url, notice: 'Tests assign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tests_assign
      @tests_assign = TestsAssign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tests_assign_params
      params.require(:tests_assign).permit(:test_id, :user_id)
    end
end
