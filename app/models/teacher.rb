class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #       :omniauthable, :omniauth_providers => [:github]

    has_many :courses
    has_many :students,    through: :courses
    has_many :assignments, through: :courses

    accepts_nested_attributes_for :students, :courses, :assignments

  def self.from_omniauth(auth)
      # Either create a User record or update it based on the provider (Google) and the UID
      where(provider: auth.provider, uid: auth.uid).first_or_create do |teacher|
        teacher.token = auth.credentials.token
        teacher.expires = auth.credentials.expires
        teacher.expires_at = auth.credentials.expires_at
        teacher.refresh_token = auth.credentials.refresh_token
      end
  end


end
