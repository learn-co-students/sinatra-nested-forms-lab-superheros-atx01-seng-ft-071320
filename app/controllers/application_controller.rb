require 'sinatra/base'
require'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'../views/super_hero'
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @name1 = params[:member1_name]
        @power1 = params[:member1_power]
        @bio1 = params[:member1_bio]
        @name2 = params[:member2_name]
        @power2 = params[:member2_power]
        @bio2 = params[:member2_bio]
        @name3 = params[:member3_name]
        @power3 = params[:member3_power]
        @bio3 = params[:member3_bio]
        erb :'../views/team'
    end
end
