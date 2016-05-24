class PostsController < ApplicationController
  def index
     @postable = find_postable
     @posts = @postable.posts
  end

  def new
     @post = Post.new
  end

  def create
   @memorial = Memorial.friendly.find(params[:memorial_id])
   @post = @memorial.posts.build(post_params)
     if @post.save
       flash[:notice] = "Successfully created post."
       redirect_to :back
     else
       render :action => 'new'
     end
  end

  private
  def find_postable
     params.require(:post).each do |name, value|
       if name =~ /(.+)_id$/
         return $1.classify.constantize.friendly.find(value)
       end
     end
     nil
  end

  def post_params
     params.require(:post).permit(:postable, text_attributes: [:body], picture_attributes: [:image])
  end
end
