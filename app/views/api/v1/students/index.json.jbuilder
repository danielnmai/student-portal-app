json.array! @students.each do |student|
  json.first_name student[:first_name]
  json.last_name student[:last_name]
  json.email student[:email]
  json.password_digest student[:password_digest]
  json.phone_number student[:phone_number]
  json.short_bio student[:short_bio]
  json.linkedin_url student[:linkedin_url]
  json.twitter_handle student[:twitter_handle]
  json.website_url student[:website_url]
  json.resume_url student[:resume_url]
  json.github_url student[:website_url]
  json.photo_url student[:photo_url]
end