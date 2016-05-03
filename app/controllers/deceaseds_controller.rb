class DeceasedsController < ApplicationController
   def new
      
   end

   def create
       @user = User.find(params[:user_id])
       @deceased = @user.deceaseds.create(deceased_params)
       redirect_to user_path(@user)
   end

   private
   def deceased_params
      params.require(:deceased).permit(:first_name, :last_name)
   end
end
