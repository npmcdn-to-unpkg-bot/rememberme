class MemorialsController < ApplicationController
   def index
      @memorials = Memorial.where("LOWER(first_name) like :q OR LOWER(last_name) like :q" , q: "%#{params[:query].downcase}%")
   end

   def show
      @memorial = Memorial.friendly.find(params[:id])
      @post = @memorial.posts.build
      @pics = @memorial.posts.where(postable_type: "Picture").collect(&:postable)
   end

   def new
      @memorial = Memorial.new
   end

   def edit
     @memorial = Memorial.friendly.find(params[:id])
   end

   def create
      @memorial = current_user.memorials.build(memorial_params)
      if @memorial.save
        redirect_to memorial_path(@memorial)
      else
        redirect_to :back
      end
   end

   def update
     @memorial = Memorial.friendly.find(params[:id])
     if @memorial.update_attributes(memorial_params)
       redirect_to memorial_path(@memorial)
     else
       render :new
     end
   end

   def destroy
      @memorial.destroy
      redirect_to root_url
   end

   private
   def memorial_params
      params.require(:memorial).permit(:first_name, :last_name, :dob, :dod, :bio)
   end
end
