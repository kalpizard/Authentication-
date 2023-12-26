# /mnt/c/Users/Dell/Desktop/rails_app/vr/app/controllers/static_controller.rb
class StaticController < ApplicationController
    def home
      render json: { status: "It's working" }
    end
  end
  