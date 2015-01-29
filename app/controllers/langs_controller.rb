class LangsController < ApplicationController

  # GET /langs/:lang_id
  def show
    @snippets = Snippet.for_lang(params[:lang_id]).page(params[:page])

    render 'snippets/index'
  end

end