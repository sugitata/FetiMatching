class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { maximum: 10 }
  validates :tubuyaki, presence: true, length: { maximum: 10 }

  # validates :sex, presence: true, uniqueness: true
  # validates :place, presence: true, uniqueness: true
  # validates :tall, presence: true, uniqueness: true

  has_many :categories, inverse_of: :user
  # カテゴリーの紐付け　一対多


  has_many :messages
  # messageと一対多の関係

  has_many :relationships, foreign_key: :follower_id
  has_many :followings, through: :relationships

  has_many :inverse_follows, foreign_key: :following_id, class_name: Relationship
  has_many :followers, through: :inverse_follows


  def followed_by? user
    inverse_follows.where(follower_id: user.id).exists?
  end

  accepts_nested_attributes_for :categories, allow_destroy: true

  

  def category_fetis
    categories.map(&:feti)
  end

  # def user_sex
  #   users.map(&:sex)
  # end



# うpろだ名
  mount_uploader :image, ImageUploader

       

         # has_many :relationships, foreign_key: :follower_id
         # has_many :followings, through: :relationships

         # has_many :inverse_follows, foreign_key: :following_id, class_name: Relationship
         # has_many :followers, through: :inverse_follows


end
