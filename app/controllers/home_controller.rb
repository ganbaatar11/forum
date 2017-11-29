class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @questions = Question.get_with_answer_size
  end
end
