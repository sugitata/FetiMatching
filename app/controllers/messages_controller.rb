class MessagesController < ApplicationController

	def index
		# @messages = Message.where("(tweet_id = ?) or (tweeted_id = ?)", current_user.id, current_user.id)
		@messages1 = Message.where( tweet_id: current_user.id )
		@messages2 = Message.where( tweeted_id: current_user.id )
		@message = Message.new
		@user1 = User.find(current_user.id)

	end

	def create
		# @message = Message.new(message_params)
		@user = User.find(params[:user_id])
        @message = current_user.messages.build(user_id: current_user.id)
        @message.save
		@message.tweet_id = current_user.id

        redirect_to user_messages_path(@user)
    end


 private
	def message_params
      params.require(:message).permit(:tweet, :tweet_id, :tweeted_id)
    end
end


# 誰に送るかは決められてない。だからtweeted_idつくって
# tweeted_idとtweet_idが一致する投稿を引っ張ってくる

# if tweeting_idとtweet_idが一致するなら



# 自分は表示されてる
# current_idとtweeted_idが等しいものだけ表示
# それだと自分の全部の表示　と他人から自分にくる全表示になる
# とすると
# 自分の方を左に全部　他人の方を右に全部で分けるのもアリ？

# 左側
# 誰に向けてなのか書かなきゃわからなくなる
# 右側
# 誰からなのか書かないといけない



# 紐づける理由
# ユーザーの投稿に対してそのユーザーの画像と名前が欲しいから

# これができたらあとは妥協



