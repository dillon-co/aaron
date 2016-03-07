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

require "dinosaurus"
require 'wordnik'
class AdSentence < ActiveRecord::Base
  belongs_to :user
  has_many :parallel_sentences
  after_save :create_parallel_sentences

  def create_parallel_sentences
    new_sentences = []
    the_words = sentence.split(/\W/)
    puts the_words
    the_words.delete("")
    the_words.each do |specific_word|
      puts specific_word
      # puts "#{Wordnik.word.get_definitions(specific_word, :part_of_speech => 'verb,noun', :use_canonical => true)}\n\n"
      query = Wordnik.word.get_related(specific_word, :type => 'synonym')
      puts "\n\n\n\t\t\t=====QUERY======\n\n\n\n#{query}"
      unless query == []
        query[0]['words'].each do |new_word|
          # puts "\n\n\t\t~~~~~NEW WORD~~~~~~~\n\n"
          new_sentences << self.sentence.dup.gsub(specific_word, new_word)
          puts new_word
        end
      end      
    end      
    new_sentences.each { |s| puts "\n#{s}" }
    puts new_sentences
  end  
end
