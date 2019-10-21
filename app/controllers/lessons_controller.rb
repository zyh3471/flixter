class LessonsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_enrollment_for_current_course, only: [:show]
    
    def show
    end
    
    private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
  
  def current_course
    @current_course ||= Course.find(params[:course_id])
  end
  
  def require_enrollment_for_current_course
   if current_lesson.section.course.user.enrolled != current_user
    redirect_to course_path(current_lesson.section.course), alert: "You are not errolled in this course"
    end
  end


end
