class QuestionsController < ApplicationController
  # Read all records
  def index
    @questions = Question.all
  end

  # Read a specific record
  def show
      # p params[:id]
      @question = Question.find(params[:id])
  end

  # Form for creating a new record
  def new
    @question = Question.new
  end

  # Create a new record
  def create
    # モデル初期化
    @question = Question.new(question_params)
    # DB保存
    @question.save
    # リダイレクト
    redirect_to @question
  end

  # Form for editing an existing record
  def edit
    @question = Question.find(params[:id])
  end

  # Update an existing record
  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  # Delete an existing record
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private

  # Strong parameters
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
