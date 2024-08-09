class PostsController < ApplicationController
    before_action :authenticate, only: [:create]
  
    def index
      @posts = Post.all
      render json: @posts
    end
  
    def show
      @post = Post.find(params[:id])
      render json: @post
    end
  
    def create
      @post = Post.new(post_params)
      @post.user = User.find_by(username: request.headers['Authorization'])
      if @post.save
        render json: @post, status: :created
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  
    def authenticate
      username = request.headers['Authorization']
      unless User.exists?(username: username)
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    end
  end
  
