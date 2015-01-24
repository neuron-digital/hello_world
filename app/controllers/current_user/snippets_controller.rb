module CurrentUser
  class SnippetsController < ::SnippetsController
    def new
      @snipept = Snippet.new
    end

    def create
      @snippet = @user.snippets.create snippet_params
    end

    def edit
      @snippet = @user.snipepts.find params[:id]
    end

    def update
      @snipept = @user.snippets.find(params[:id]).update snippet_params
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