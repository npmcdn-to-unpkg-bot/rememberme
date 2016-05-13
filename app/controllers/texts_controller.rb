class TextsController < ApplicationController
   def new
      @text = Text.new
   end

   def create
      @text = Text.new(text_params)
      if @text.save
         post = Post.create(memorial_id: params_memorial[:memorial_id], postable_type: "Text", postable_id: @text.id)
      else
         flash[:alert] = "Nay"
      end
      redirect_to :back
   end

   private
      def text_params
         params.require(:text).permit(:body, posts_attributes: [:postable_type])
      end

      def params_memorial
         params.require(:text).permit([:memorial_id])
      end
end
