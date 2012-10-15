class HomeController < ApplicationController
  def index
  end

  def login
    #@student = Student.where("upper(Email)=upper('Jane.Doe@gmail.com')")
    @student = Student.where(:Email => "Jane.Doe@gmail.com")
    if @student.empty?
      respond_to do |format|
        format.html # index.html.erb
      end
    else
      respond_to do |format|
        format.html # login.html.erb
        format.json { render json: @student }
      end
    end
  end

end
