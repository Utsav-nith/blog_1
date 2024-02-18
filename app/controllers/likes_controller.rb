# class LikesController < ApplicationController
#     before_action :authenticate_user! # Ensure the user is authenticated before allowing them to like/unlike

#     def create
#       @post = Post.find(params[:post_id])
#       @like = @post.likes.build(user: current_user)
  
#       if @like.save
#         redirect_to @post, notice: 'Liked this post!'
#       else
#         redirect_to @post, alert: 'Failed to like the post.'
#       end
#     end
  
#     def destroy
#       @post = Post.find(params[:post_id])
#       @like = @post.likes.find(params[:id])
  
#       if @like.destroy
#         redirect_to @post, notice: 'Unliked this post!'
#       else
#         redirect_to @post, alert: 'Failed to unlike the post.'
#       end
#     end
# end
