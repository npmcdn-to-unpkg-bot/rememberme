class PicturesController < ApplicationController
   def index
      @pictures = Picture.all
   end

   def new
      @picture = Picture.new
   end

   def create
      @picture = Picture.new(picture_params)
      if @picture.save
         post = Post.create(memorial_id: params_memorial[:memorial_id], user_id: current_user.id, postable_type: "Picture", postable_id: @picture.id)
      else
         flash[:alert] = "Nay"
      end
      redirect_to :back
   end

   private
      def picture_params
         params.require(:picture).permit(:image)
      end

      def params_memorial
         params.require(:picture).permit([:memorial_id])
      end
end
