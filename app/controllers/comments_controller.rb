class CommentsController < ApplicationController
end

private
def comment_params
  params.require(:comment).permit(:commenter, :body, :status)
end


class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    end
  
    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to article_path(@article), status: :see_other
    end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
  


  class CommentsController < ApplicationController
    http_basic_authenticate_with name: "12", password: "12", only: :destroy
  
    def create
      @article = Article.find(params[:article_id])
      # ...
    end

  end
    # snippet for brevity
  