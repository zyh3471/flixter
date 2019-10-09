class Lesson < ApplicationRecord
     belongs_to :section
     belongs_to :image, ImageUploader
     belongs_to :video, VideoUploader
     
     def create
     flash[:notice] = "You are not enrolled in this lesson"
      redirect_to @post
      end
      
      def show
      end 
     
end
