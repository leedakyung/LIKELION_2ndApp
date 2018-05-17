Rails.application.routes.draw do
  
  #Create
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create'
  
  #Read
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show' #어떤 글 보여줄 지 id로
  
  #Update
  get '/notes/:id/edit' => 'notes#edit' #어떤 글 수정할 지 id로
  patch '/notes/:id' => 'notes#update'
  
  #Destroy
  delete '/notes/:id' => 'notes#destroy'
  
end
