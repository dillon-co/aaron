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

require 'rails_helper'

RSpec.describe AdSentence, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
