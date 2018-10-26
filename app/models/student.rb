class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 #       :omniauthable, :omniauth_providers => [:github]

  has_many :student_courses
  has_many :courses,     through: :student_courses

  has_many :course_details
  has_many :teachers,    through: :course_details

  accepts_nested_attributes_for :teachers, :courses, :course_details

  def self.from_omniauth(auth)
      # Either create a User record or update it based on the provider (Google) and the UID
      where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
        student.token = auth.credentials.token
        student.expires = auth.credentials.expires
        student.expires_at = auth.credentials.expires_at
        student.refresh_token = auth.credentials.refresh_token
      end
  end
end
