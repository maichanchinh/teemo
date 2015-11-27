class TestTagsController < ApplicationController
  before_action :set_test_tag, only: [:show, :edit, :update, :destroy]

  # GET /test_tags
  # GET /test_tags.json
  def index
    @test_tags = TestTag.all
  end

  # GET /test_tags/1
  # GET /test_tags/1.json
  def show
  end

  # GET /test_tags/new
  def new
    @test_tag = TestTag.new
  end

  # GET /test_tags/1/edit
  def edit
  end

  # POST /test_tags
  # POST /test_tags.json
  def create
    @test_tag = TestTag.new(test_tag_params)

    respond_to do |format|
      if @test_tag.save
        format.html { redirect_to @test_tag, notice: 'Test tag was successfully created.' }
        format.json { render :show, status: :created, location: @test_tag }
      else
        format.html { render :new }
        format.json { render json: @test_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_tags/1
  # PATCH/PUT /test_tags/1.json
  def update
    respond_to do |format|
      if @test_tag.update(test_tag_params)
        format.html { redirect_to @test_tag, notice: 'Test tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_tag }
      else
        format.html { render :edit }
        format.json { render json: @test_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_tags/1
  # DELETE /test_tags/1.json
  def destroy
    @test_tag.destroy
    respond_to do |format|
      format.html { redirect_to test_tags_url, notice: 'Test tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_tag
      @test_tag = TestTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_tag_params
      params.require(:test_tag).permit(:test_id, :tag_id)
    end
end
