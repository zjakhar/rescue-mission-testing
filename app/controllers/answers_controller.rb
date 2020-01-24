class AnswersController < ApplicationController

def index

  @question = Question.find(params[:question_id])
  @answers = @question.answers
end

def create
  @question = Question.find(params[:question_id])
  @answer = Answer.new(answer_params)
  @answer.question = @question

  if @answer.save
    flash[:notice] = "House added successfully"
    redirect_to @question
  else
    flash[:alert] = @answer.errors.full_messages.to_sentence

    redirect_to @question
  end
end

private

def answer_params
  params.require(:answer).permit(:description)
end

end
