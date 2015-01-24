class SnippetsController < ApplicationController
  before_action :find_user

  def index
    @snippets = snippets.for_main.page params[:page]
  end

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
