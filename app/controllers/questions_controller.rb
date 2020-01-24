class QuestionsController < ApplicationController
  def index
    @questions = Question.all.reverse()
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

  if @question.save
    flash[:notice] = "Question saved successfully."
    redirect_to question_path(@question)
  else
    flash.now[:alert] = @question.errors.full_messages.to_sentence
    render :new
  end
end

private
  def question_params
    params.require(:question).permit(:title, :body)
  end

end
