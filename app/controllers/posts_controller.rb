class PostsController < ApplicationController
    def index
        @posts=Post.all
    end
#creating an instance of Post
    def new 
        @post=Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def update 
        @post =Post.find(params[:id])
        if @post.update(post_params)
            redirect_to posts_path
        else
            render 'edit'
        end
    end

    def edit 
        @post =Post.find(params[:id])
    end

    def destroy
        #puts "deleted----------------------------------"
        @post = Post.find(params[:id])
        @post.destroy
      
        redirect_to posts_path
    end
      

    private
    def post_params
        # params is a hash-like object that contains all the parameters sent with the HTTP request.
        # require(:post) ensures that the params hash contains a key named :post, and if it's not present, it raises an error.
        # .permit(:title, :content): This line specifies which attributes of the post model are allowed to be mass-assigned
        params.require(:post).permit(:title,:content)
    end

end
