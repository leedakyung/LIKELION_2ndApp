class NotesController < ApplicationController
# Create
    # 사용자의 입력을 받는 부분(사용자가 작성)
    def new
        @token = form_authenticity_token
    end
    
    # 사용자의 입력을 받아오는 부분
    def create 
        note = Note.new
        note.title = params[:input_title]
        note.content = params[:input_content]   
        note.save
        #view/notes/create.html.erb를 보여줘라! 있어야하는데 redirect_to 쓰면 해결할 수 있음
        # TODO : '/notes/new'로 리다이렉트 되는 걸 변경한다.
        redirect_to "/notes/#{note.id}"
    end
    
# Read
    def index
        @notes = Note.all
    end
    
    def show
        # puts '====================='
        # p params
        # puts '====================='
        @note = Note.find params[:id]
    end
    
#Update
    def edit
        @note = Note.find params[:id]
        @token = form_authenticity_token
    end
    
    def update
        note = Note.find params[:id]
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to "/notes/#{note.id}"
    end

#Destroy
    def destroy
        @note =Note.find params[:id]
        @note.destroy
        redirect_to '/notes'
    end
end
