FactoryGirl.define do
  factory :parallel_sentence do
    sentence "MyString"
    keep false
    times_clicked 1
  end
end
