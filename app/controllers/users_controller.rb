class UsersController < ApplicationController

 
 def index
    @users = User.all
     @admins= User.all
    
 end

 def show
 end

  def edit
 end
 
 def create
 end

 def new
    
 end

 def update
 end

 def delete
 end



end