class PostController < ApplicationController
   
    def index
        # if params[:search]
        #     @posts = Post.search(params[:search]).order("created_at DESC")
        #   else
        #     @posts = Post.all.order('created_at DESC')
        #   end
       # @posts = Post.all
       @posts = Post.search(params[:search])
       #byebug
        # @posts = Post.page(params[:page]).per(5)
       
    end
    
    def show
        
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
     
        if @post.save
         
         redirect_to :action => 'new', notice: "The resume #{@post.title} has been uploaded."
        else
           render "new"
        end
    end
    
    def edit
        @post = Post.find(params[:id])
       
    end

    def post_param
        params.require(:post).permit(:title, :description, :attachment)
     end
    
    def update
        @post = Post.find(params[:id])
        #abort book_param.inspect
        @update = @post.update(post_param)
        if @update
        redirect_to :action => 'show', :id => @post
        else
            render :action => 'edit'
        end
         
    
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to :action => 'index', notice:  "The resume #{@post.title} has been deleted."
    end
    def search
        
        @post = Post.find(param[:title])


    end

    private
    def post_params
    params.require(:post).permit(:title, :description, :attachment)
 end


 
end
