# == Schema Information
#
# Table name: ad_sentences
#
#  id         :integer          not null, primary key
#  sentence   :string
#  clicked    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :ad_sentence do
    sentence "MyString"
    clicked 1
  end
end
