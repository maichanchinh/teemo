class QuestionDetailsController < ApplicationController
  before_action :set_question_detail, only: [:show, :edit, :update, :destroy]

  # GET /question_details
  # GET /question_details.json
  def index
    @question_details = QuestionDetail.all
  end

  # GET /question_details/1
  # GET /question_details/1.json
  def show
  end

  # GET /question_details/new
  def new
    @question_detail = QuestionDetail.new
  end

  # GET /question_details/1/edit
  def edit
  end

  # POST /question_details
  # POST /question_details.json
  def create
    @question_detail = QuestionDetail.new(question_detail_params)

    respond_to do |format|
      if @question_detail.save
        format.html { redirect_to @question_detail, notice: 'Question detail was successfully created.' }
        format.json { render :show, status: :created, location: @question_detail }
      else
        format.html { render :new }
        format.json { render json: @question_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_details/1
  # PATCH/PUT /question_details/1.json
  def update
    respond_to do |format|
      if @question_detail.update(question_detail_params)
        format.html { redirect_to @question_detail, notice: 'Question detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_detail }
      else
        format.html { render :edit }
        format.json { render json: @question_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_details/1
  # DELETE /question_details/1.json
  def destroy
    @question_detail.destroy
    respond_to do |format|
      format.html { redirect_to question_details_url, notice: 'Question detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_detail
      @question_detail = QuestionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_detail_params
      params.require(:question_detail).permit(:question_id, :content)
    end
end
