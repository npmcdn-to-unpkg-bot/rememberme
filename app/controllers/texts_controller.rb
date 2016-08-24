class TextsController < ApplicationController
   def new
      @text = Text.new
      @memorial_id = params[:memorial_id]
   end

   def edit
     @text = Text.find(params[:id])
   end

   def create
      @text = Text.new(text_params)
      if @text.save
         post = Post.create(memorial_id: params_memorial[:memorial_id], user_id: current_user.id, postable_type: "Text", postable_id: @text.id)
      else
         flash[:alert] = "Nay"
      end
      redirect_to :back
   end

   def update
     @text = Text.find(params[:id])
     if @text.update(text_params)
       redirect_to :back
     end
   end

   private
      def text_params
         params.require(:text).permit(:body)
      end

      def params_memorial
         params.require(:text).permit([:memorial_id])
      end
end
