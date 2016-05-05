class MemorialsController < ApplicationController
   def index
      @memorials = Memorial.where("LOWER(first_name) like :q OR LOWER(last_name) like :q" , q: "%#{params[:query]}%")
      p @memorials
      p @memorials.count
   end

   def show
      @memorial = Memorial.find(params[:id])
   end

   def new
      @memorial = Memorial.new
   end

   def edit
   end

   def create
      @memorial = current_user.memorials.create(memorial_params)
      redirect_to memorial_path(@memorial)
   end

   def update
   end

   def destroy
      @memorial.destroy
      redirect_to root_url
   end

   private
   def memorial_params
      params.require(:memorial).permit(:first_name, :last_name, :dob, :dod)
   end
end
