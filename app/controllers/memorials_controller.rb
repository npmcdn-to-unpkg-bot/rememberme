class MemorialsController < ApplicationController
   def show
      @memorial = Memorial.find(params[:id])
   end

   def new
      @memorial = Memorial.new
   end

   def create
      @memorial = current_user.memorials.create(memorial_params)
      redirect_to memorial_path(@memorial)
   end

   private
   def memorial_params
      params.require(:memorial).permit(:first_name, :last_name, :dob, :dod)
   end
end
