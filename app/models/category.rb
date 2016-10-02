class Category < ActiveRecord::Base

  belongs_to :user

  # validates :user, presence: true
  # validates :feti, presence:true, uniqueness: { scope: :user_id }

  enum feti: %i(うなじ わき あし きんにく おしり 耳 二の腕 におい 鎖骨 声)
end
