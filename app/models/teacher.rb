#This library is an interface to secure random number generators 
#which are suitable for generating session keys in HTTP cookies, etc.
require 'securerandom'

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

  def self.from_omniauth(auth)
      puts "ec- Teachers Model - def self.from_omniauth(auth)"

      where(provider: auth.provider, uid: auth.uid).first_or_create do |teacher|
        teacher.provider = auth.provider
        teacher.lastname = auth.info.name
        teacher.uid = auth.uid
        teacher.email = auth.info.email
        teacher.password = SecureRandom.urlsafe_base64
      end
  end

end
