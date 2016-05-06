class PostsController < ApplicationController
  def index
     @postable = find_postable
     @posts = @postable.posts
  end

  def new
     @post = Post.new
  end

  def create
  @postable = find_postable
  @post = @postable.posts.build(params[:post])
  if @post.save
    flash[:notice] = "Successfully created post."
    redirect_to :id => nil
  else
    render :action => 'new'
  end
end

  private
  def find_postable
     params.each do |name, value|
       if name =~ /(.+)_id$/
         return $1.classify.constantize.find(value)
       end
     end
     nil
  end
end
