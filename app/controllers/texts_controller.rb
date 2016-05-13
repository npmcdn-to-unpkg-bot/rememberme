class TextsController < ApplicationController
   def new
      @text = Text.new
   end

   def create
      if Text.create(text_params)
         flash[:success] = "Yay"
      else
         flash[:alert] = "Nay"
      end
      redirect_to :back
   end

   private

   def text_params
      params.require(:text).permit(:body, posts_attributes: [:postable_type])
   end
end
