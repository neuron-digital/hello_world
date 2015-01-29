class RubricsController < ApplicationController

  # GET /rubrics/:rubric_id
  def show
    @snippets = Snippet.for_rubric(params[:rubric_id]).page(params[:page])

    render 'snippets/index'
  end

end