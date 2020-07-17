# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seeds
  def seed!
    en = File.open('lib/pie-en.txt').readlines

    File.open('lib/pie-de.txt').each_with_index do |de_line, i|
      if de_line.include?(',')
        puts "Could not process: #{de_line}"
      else
        en_line = en[i]
        pie, de = de_line.split('=')
        pie2, english = en_line.split('=')
        # raise StandardError unless pie == pie2
        word = Word.find_or_create_by(deutsch: de.strip, pie: pie.strip, english: english.strip)

        # require 'pry'; binding.pry if de[0]
        word.noun = (de.strip[0] =~ /[[:upper:]]/).present?
        word.save!
      end
    end
  end
end

Seeds.new.seed!
