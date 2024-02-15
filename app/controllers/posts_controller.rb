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

    def edit 
        @post =Post.find(params[:id])
    end
    private
    def post_params
        # params is a hash-like object that contains all the parameters sent with the HTTP request.
        # require(:post) ensures that the params hash contains a key named :post, and if it's not present, it raises an error.
        # .permit(:title, :content): This line specifies which attributes of the post model are allowed to be mass-assigned
        params.require(:post).permit(:title,:content)
    end

end
