class QuestionsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def new
    @groups = Group.all
  end

  def create
    p params.as_json
    p params[:title]
    question =  Question.new(group_id: params[:group_id], title: params[:title], question: params[:question], user_id: current_user.id)
    if(question.valid?)

    else
      flash[:alert] = question.errors.full_messages.join(', ')
      redirect_to ask_path
    end
  end

  def edit
  end

  def show
    if params[:id]
      @question = Question.get_with_answers(params[:id])
    end

  end
end
