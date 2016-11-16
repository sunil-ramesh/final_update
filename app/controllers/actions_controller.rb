class ActionsController < ApplicationController
def show

  @action=Action.find_by_id(params[:id])
end

 def index
   @actions=Action.all
   @user=User.all
 end


 def new
  
   @action = Action.new
 end

 def create
  
   @action = Action.new(action_params)
   @action.owner = current_user
   @action.users << User.find(params["participant"])
   if @action.save
     flash[:success] = "action created!"
     redirect_to action_index_path
   else
     render :new
   end
 end
def edit
  
  @event_action=Action.find(params[:id])
end

def update
  @action=Action.find_by_id(params[:id])
  
  @action.update_attributes(action_params)
  redirect_to action_index_path
end


 def destroy
   @action.destroy
   flash[:success] = "action deleted"
   redirect_to request.referrer || root_url
 end

 private
    def action_params
     
      params.require(:event_action).permit(:event_title, :venue, :date, :time, :description, :status)
    end

    def find_user
    end
  end