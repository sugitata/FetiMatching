class RelationshipsController < ApplicationController


	before_action :authenticate_user!

    def create
        @user = User.find(params[:user_id])
        follow = current_user.relationships.build(following_id: @user.id)
        if follow.save
            redirect_to users_path, notice: "フォローしました"
        else
            redirect_to users_path, alert: "フォローできません"
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        follow = current_user.relationships.find_by!(following_id: @user.id)
        follow.destroy
        redirect_to users_path, notice: "フォロー解除しました"
    end


end
