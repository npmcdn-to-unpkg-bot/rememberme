class VideosController < ApplicationController
   def index
      @videos = Video.all
   end

   def new
      @video = Video.new
   end

   def edit
     @video = Video.find(params[:id])
   end

   def create
      @video = Video.new(video_params)
      if @video.save
         post = Post.create(memorial_id: params_memorial[:memorial_id], user_id: current_user.id, postable_type: "Video", postable_id: @video.id)
      else
         flash[:alert] = "Video failed to save"
      end
      redirect_to :back
   end

   private
      def video_params
         params.require(:video).permit(:body, :video_file)
      end

      def params_memorial
         params.require(:video).permit([:memorial_id])
      end
end
