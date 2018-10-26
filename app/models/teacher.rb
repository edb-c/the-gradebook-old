class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:github]

    has_many :teacher_courses
    has_many :courses,     through: :teacher_courses

    has_many :course_details
    has_many :students, through: :course_details


    accepts_nested_attributes_for :students, :courses, :course_details

#  def self.from_omniauth(auth)
#      where(provider: auth.provider, uid: auth.uid).first_or_create do |teacher|
#        teacher.token = auth.credentials.token
#        teacher.expires = auth.credentials.expires
#        teacher.expires_at = auth.credentials.expires_at
#        teacher.refresh_token = auth.credentials.refresh_token
#      end
#  end

  def self.from_omniauth(auth)
      where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
    end

    def self.create_from_omniauth(auth)
      create! do |teacher|
        teacher.provider = auth["provider"]
        teacher.uid = auth["uid"]
        teacher.name = auth["info"]["nickname"]
      end
    end

end
