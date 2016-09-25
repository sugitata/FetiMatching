class Relationship < ActiveRecord::Base


    belongs_to :follower, class_name: User
    belongs_to :following, class_name: User


    validates :follower_id, presence: true
    validates :following_id, presence: true
    validates :following_id, uniqueness: { scope: :follower_id }
end
