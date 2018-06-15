class Admin::UsersController < AdminController
  before_action :set_user, only: [:show, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  
  def user_params
    params.require(:user).permit(:name, :surname, :email, :sex, :admin, :moderator, :password, :password_confirmation)
  end
end