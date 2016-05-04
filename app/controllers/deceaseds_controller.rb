class DeceasedsController < ApplicationController
   def show
   end

   def new
      @deceased = Deceased.new
   end

   def create
      @deceased = current_user.deceaseds.create(deceased_params)
      redirect_to show_memorial_path
   end

   private
   def deceased_params
      params.require(:deceased).permit(:first_name, :last_name)
   end
end
