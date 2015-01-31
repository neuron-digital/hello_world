module CurrentUser
  class SnippetsController < ::SnippetsController
    def index ; end

    def new
      @snippet = Snippet.new
    end

    def create
      @user.snippets.create snippets_params
      redirect_to action: :index
    end

    def edit
      @snippet = @user.snippets.find params[:id]
    end

    def update
      @snipept = @user.snippets.find(params[:id]).update snippets_params
    end

    def destroy
      @user.snippets.destroy params[:id]
    end

    private

    def find_user
      @user = current_user
    end

    def snippets_params
      params.require(:snippet).permit(:title, :content)
    end
  end
end