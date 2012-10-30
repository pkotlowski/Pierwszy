# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# platitudes.u8
#
# A beginning is the time for taking the most delicate care that balances are
# correct.
#                 -- Princess Irulan, "Manual of Maud'Dib"
# %
# A bird in the bush usually has a friend in there with him.
# %
platitudes = File.readlines(Rails.root.join('db', 'platitudes.u8'), "\n%\n")
tags = ['always', 'always', 'sometimes', 'never', 'maybe', 'ouch', 'wow', 'nice', 'wonderful']
platitudes.map do |p|
  reg = /\t?(.+)\n\t\t--\s*(.*)\n%\n/m
  m = p.match(reg)
  if m
   f = Fortune.create :body => m[1], :author => m[2]
  else
   f = Fortune.create :body => p[0..-4], :author => Faker::Name.name
  end
f.tag_list = tags.sample(rand(tags.size - 3))
  f.save
end
