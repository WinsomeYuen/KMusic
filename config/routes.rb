Rails.application.routes.draw do
   root 'home#index'
   get 'group/list'
   get 'group/new'
   post 'group/create'
   patch 'group/update'
   get 'group/list'
   get 'group/show'
   get 'group/edit'
   get 'group/delete'
   get 'group/update'
   get 'group/show_genres'
   get 'about' => 'home#about', as: :about
   get 'genre' => 'home#genre', as: :genre
   get 'news' => 'home#news', as: :news
   get '/group_info/kpop' => 'genre_info#kpop', as: :kpop
   get '/group_info/trot' => 'genre_info#trot', as: :trot
   get '/group_info/hiphop' => 'genre_info#hiphop', as: :hiphop
end