module CommentsHelper
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
