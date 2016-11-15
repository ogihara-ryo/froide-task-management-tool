FactoryGirl.define do
  factory :task do
    title 'MyString'
    memo 'MyText'
    priority 1
    estimate_hour 1.5
    actual_hour 1.5
    started_at '2016-11-15 19:07:04'
    finished_at '2016-11-15 19:07:04'
    status 1
    user nil
  end
end
