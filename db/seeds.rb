# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

l0 = Link.create(:title => 'a', :url => 'x')
l1 = Link.create(:title => 'b', :url => 'x')
l2 = Link.create(:title => 'c', :url => 'x')
l3 = Link.create(:title => 'd', :url => 'x')
l4 = Link.create(:title => 'e', :url => 'x')
l5 = Link.create(:title => 'f', :url => 'x')
l6 = Link.create(:title => 'g', :url => 'x')
l7 = Link.create(:title => 'h', :url => 'x')
l8 = Link.create(:title => 'i', :url => 'x')
l9 = Link.create(:title => 'j', :url => 'x')
la = Link.create(:title => 'k', :url => 'x')
lb = Link.create(:title => 'l', :url => 'x')
lc = Link.create(:title => 'm', :url => 'x')
ld = Link.create(:title => 'n', :url => 'x')
le = Link.create(:title => 'o', :url => 'x')
lf = Link.create(:title => 'p', :url => 'x')

t1 = Tag.create(:name => "a1")
t2 = Tag.create(:name => "b2")
t3 = Tag.create(:name => "c3")
t4 = Tag.create(:name => "d4")
t5 = Tag.create(:name => "e5")

t1.links = [l0, l1, l2, l3, l4, l5, l6, l7, l8, l9, la, lb, lc, ld, le, lf]
t2.links = [l0, l1, l2, l3, l4, l5, l6, l7, l8, l9, la, lb, lc, ld, le]
t3.links = [l0, l1, l2, l3, l4, l5, l6, l7, l8, l9, la, lb, lc, ld]
