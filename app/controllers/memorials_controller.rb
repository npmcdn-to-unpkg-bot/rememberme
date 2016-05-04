class MemorialsController < ApplicationController
   def show
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
      params.require(:memorial).permit(:first_name, :last_name)
   end

   # def full_name
   #    first = params(:first_name)
   #    last = params(:last_name)
   #    full = "#{first} #{last}"
   # end
end
