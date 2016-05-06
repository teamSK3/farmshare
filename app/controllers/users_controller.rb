class UsersController < ApplicationController
	def index
		@users =User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def search
		@users = User.search(params[:q])
		render "index"
	end

	def new
		@user = User.new(name:("農園太郎"))
	end

	def edit
		@user = User.find(params[:id])
	end
	def create
		params.permit!
		@user =User.new(params[:user])
		if @user.save
			redirect_to @user, notice: "会員登録しました。"
		else
			render "new"
		end
	end

	def update
		params.permit!
		@user = User.find(params[:id])
		@user.assign_attributes(params[:user])
		if
			redirect_to @user, notice: "会員情報を更新しました。"
		else
			render "edit"
		end
	end
	def destroy
		params.permit!
		@user =User.find(params[:id])
		@user.destroy
		redirect_to :users, notice: "会員を削除しました。"
	end

	def user_params
 		params.require(:user).permit(:name,:job,:description,:role,:image)
	end
end
