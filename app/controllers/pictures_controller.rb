class PicturesController < ApplicationController
   def index
      @pictures = Picture.all
   end

   def new
      @picture = Picture.new
      @memorial_id = params[:memorial_id]
   end

   def edit
     @picture = Picture.find(params[:id])
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

   def update
     @picture = Picture.find(params[:id])
     if @picture.update(picture_params)
       redirect_to :back
     end
   end

   private
      def picture_params
         params.require(:picture).permit(:body, :image)
      end

      def params_memorial
         params.require(:picture).permit([:memorial_id])
      end
end
