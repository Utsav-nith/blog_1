class SearchController < ApplicationController
  # before_action :set_post, only: %i[ show edit update destroy ]

# GET /articles or /articles.json
def index
  @q = Post.ransack(params[:q])
  @posts = @q.result(distinct: true)
end
end
