class AchievementsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :edit, :create, :destroy, :update]
    before_action :owners_only, only: [:edit, :update, :destroy] #to declare function owners_only

    def new
        @achievement = Achievement.new
    end

    def create
        service = CreateAchievement.new(params[:achievement], current_user)
        service.create
        # @achievement = Achievement.new(achievement_params)
        # if @achievement.save
        #     redirect_to achievement_url(@achievement), notice: 'Achievement has been created'
        # else
        #     render :new
        # end

        # if service.create?
        #     redirect_to achievement_path(service.achievement)
        # else
            render :nothing => true
        # end
    end

    def index
        @achievements = Achievement.get_public_achievements
    end

    def show
        @achievement = Achievement.find(params[:id])
    end

    def edit   
    end

    def update
        if @achievement.update_attributes(achievement_params)
            redirect_to achievement_path(@achievement)
        else
            render :edit
        end
    end

    def destroy
        @achievement.destroy
        redirect_to achievements_path
    end

    private
    
    def achievement_params
        params.require(:achievement).permit(:title, :description, :privacy, :cover_image, :featured)
    end

    def owners_only 
        @achievement = Achievement.find(params[:id])
        if current_user != @achievement.user
            redirect_to achievements_path
        end
    end
end