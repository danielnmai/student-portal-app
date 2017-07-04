class Api::V1::StudentsController < ApplicationController
  def index
    new_student = {
      id: 1,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Name.first_name + "@gmail.com",
      password_digest: "as;dkf ;lasdjkf;lsdjk",
      phone_number: Faker::PhoneNumber.phone_number,
      short_bio: Faker::Hipster.sentence(2),
      linkedin_url: "www.linkedin.com/in/" + Faker::Name.first_name,
      twitter_handle: "@" + Faker::Internet.user_name(5..12),
      website_url: "www." + Faker::Name.first_name + ".com",
      resume_url: "www." + Faker::Name.first_name + ".com",
      github_url: "www.github.com/" + Faker::Internet.user_name(5..12),
      photo_url: "www." + Faker::Name.first_name + ".com"
    }

    new_student_2 = {
      id: 2,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Name.first_name + "@gmail.com",
      password_digest: "as;dkf ;lasdjkf;lsdjk",
      phone_number: Faker::PhoneNumber.phone_number,
      short_bio: Faker::Hipster.sentence(2),
      linkedin_url: "www.linkedin.com/in/" + Faker::Name.first_name,
      twitter_handle: "@" + Faker::Internet.user_name(5..12),
      website_url: "www." + Faker::Name.first_name + ".com",
      resume_url: "www." + Faker::Name.first_name + ".com",
      github_url: "www.github.com/" + Faker::Internet.user_name(5..12),
      photo_url: "www." + Faker::Name.first_name + ".com"
    }

    @students = [new_student, new_student_2]
    p @students

  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "email"
  #   t.string "password_digest"
  #   t.string "phone_number"
  #   t.text "short_bio"
  #   t.string "linkedin_url"
  #   t.string "twitter_handle"
  #   t.string "website_url"
  #   t.string "resume_url"
  #   t.string "github_url"
  #   t.string "photo_url"

  # create_table "experiences", force: :cascade do |t|
  #   t.date "start_date"
  #   t.date "end_date"
  #   t.string "title"
  #   t.string "company"
  #   t.text "details"

  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false


    render "index.json.jbuilder"
  end

  def show
    id = params[:id]

     @student = {
      id: id,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Name.first_name + "@gmail.com",
      password_digest: "as;dkf ;lasdjkf;lsdjk",
      phone_number: Faker::PhoneNumber.phone_number,
      short_bio: Faker::Hipster.sentence(2),
      linkedin_url: "www.linkedin.com/in/" + Faker::Name.first_name,
      twitter_handle: "@" + Faker::Internet.user_name(5..12),
      website_url: "www." + Faker::Name.first_name + ".com",
      resume_url: "www." + Faker::Name.first_name + ".com",
      github_url: "www.github.com/" + Faker::Internet.user_name(5..12),
      photo_url: "www." + Faker::Name.first_name + ".com"
    }

    render "show.json.jbuilder"
  end
end
