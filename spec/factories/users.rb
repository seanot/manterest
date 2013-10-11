FactoryGirl.define do
  sequence :email do |n|
    "email-#{n}@ex.com"
  end

  sequence :username do |n|
    "User_#{n}"
  end

  factory :user do |f|
    f.email      "user@example.com"
    f.username   "cooluser39"
    f.password   "secret1234!"
    f.password_confirmation "secret1234!"
  end
end
