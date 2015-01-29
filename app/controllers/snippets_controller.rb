class SnippetsController < ApplicationController
  before_action :find_user

  # GET /snippets
  # GET /users/:user_id/snippets
  def index
    @snippets = snippets.for_main.page params[:page]
  end

  # GET /snippets/:id
  # GET /users/:user_id/snippets/:id
  def show
    @snippet = snippets.find params[:id]
  end

  private

  def find_user
    @user = User.find params[:user_id] if params.key? :user_id
  end

  def snippets
    if @user.nil?
      Snippet
    else
      @user.snippets
    end
  end
end
