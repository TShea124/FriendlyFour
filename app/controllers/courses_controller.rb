class CoursesController < ApplicationController
  
def index
    @courses = Course.all	
  if params[:search]
    @courses = Course.search(params[:search]).order("created_at DESC")
  else
    @courses = Course.all.order('created_at DESC')
  end
end
 
def show
    @course = Course.find(params[:id])
    @teetimes = Teetime.all
    # binding.pry
end
 
  # def new
  #   @courses = Courses.new
  # end
 
  # def create
  #   @courses = Courses.new(Courses_params)
 
  #   if @Courses.save
  #     redirect_to @Courses
  #   else
  #     render 'new'
  #   end
  # end
 
  # def edit
  #   @courses = Courses.find(params[:id])
  # end

  # def update
  #   @courses = Courses.find(params[:id])
 
  #   if @courses.update(courses_params)
  #     redirect_to @Courses
  #   else
  #     render 'edit'
  #   end
  # end
 
  # def destroy
  #   @courses = Courses.find(params[:id])
  #   @courses.destroy
 
  #   redirect_to coursess_path
  # end
 
  private
    def courses_params
      params.require(:courses).permit(:name, :address, :city, :classification, :price, :phone, :img)
    end
end
