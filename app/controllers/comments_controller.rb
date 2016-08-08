class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = Comment.new 
  end

  def create
    @post = Post.find_by_id(session[:current_post_id])
      @comment = current_user.comments.new(comment_params)
      @comment.post_id = session[:current_post_id]
      respond_to do |format|
        if @comment.save
          format.html { redirect_to @post, notice: 'Comment was successfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to Post.find_by_id(session[:current_post_id]), notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:title, :content)
    end
end
