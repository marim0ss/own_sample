class UsersController < ApplicationController
  def index
    # render templete: 'users/index' <= app/views/users/index.html.erbという規約通りのファイル名ならばわざわざ指定は不要
    @hello = "Hello,World!!!!!!"
  end
end
