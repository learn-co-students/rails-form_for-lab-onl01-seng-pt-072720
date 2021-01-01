class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
    
  def new
    @school_class = SchoolClass.new
  end

  def create
	  @school_class = SchoolClass.new
	  @school_class.title = params[:school_class][:title]
	  @school_class.room_number = params[:school_class][:room_number]
	  @school_class.save
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def show
    @school_class = School_class.find(params[:id])

  end

  def edit
  end

  def update
  end
end
