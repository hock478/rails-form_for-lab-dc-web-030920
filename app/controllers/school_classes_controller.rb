class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end
    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new

    end

    def edit
		@school_class = SchoolClass.find(params[:id])
    end
    
    def create
        @school_class = SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number])
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

end