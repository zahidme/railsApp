class CommentController < ApplicationController
    def index
        #byebug
        @comments = Comment.all

    end

    def new
        @comment = Comment.new
    end
    
    def create
        #byebug
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.post_id = params[:post_id]
        @comment.user_id
         
     
        if @comment.save
            current_user.id
         redirect_to :action => 'new', notice: "The Comment has been uploaded."
        else
            #abort current_user.id.inspect
            redirect_to :action => 'new'
        end
    end

    private
    def comment_params
    params.require(:comment).permit( :description)
 end
end
