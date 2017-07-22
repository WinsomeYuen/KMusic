class GroupController < ApplicationController
layout 'groupsstandard'

   def list
      @groups = Group.all
   end

   def show
      @group = Group.find(params[:id])
   end
  
   def new
      @group = Group.new
      @genres = Genre.all
   end

   def group_params
      params.require(:groups).permit(:name, :debut, :labels, :members, :genre_id, :description)
   end

   def create
      @group = Group.new(group_params)

      if @group.save
         redirect_to :action => 'list'
      else
         @genres = Genre.all
         render :action => 'new'
      end
   end
   
   def edit
      @group = Group.find(params[:id])
      @genres = Genre.all
   end
   
   def group_param
      params.require(:group).permit(:name, :debut, :labels, :members, :genre_id, :description)
   end
   
   def update
      @group = Group.find(params[:id])
      
      if @group.update_attributes(group_param)
         redirect_to :action => 'show', :id => @group
      else
         @genres = Genre.all
         render :action => 'edit'
      end
   end
   
   def delete
      Group.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_genres
      @genre = Genre.find(params[:id])
   end

end