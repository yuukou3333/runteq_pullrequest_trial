FactoryBot.define do
  factory :task do
    content { Faker::Hacker.say_something_smart }
    user
  end
end
