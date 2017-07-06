FactoryGirl.define do
  factory :user do
    user_name('Dana Weiss')
    email('dana@dana.com')
    password('mycoolpass')
    password_confirmation('mycoolpass')
  end
end
