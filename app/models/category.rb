class Category < ActiveRecord::Base

  belongs_to :user

  validates :user, presence: true
  validates :feti, presence:true, uniqueness: { scope: :user_id }

  enum feti: %i(うなじ わき あし きんにく おしり みみ)
end
