# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
["Fixos","Informações","Noticias","Produtos","Promoções"].each do |cat|
  Category.create :name => cat
end

Article.create! :category_id => 1 ,:title => "Sobre nós" , :content => <<END
Nossa empresa é megaboga e ainda vai dominar o mundo seus animais =D
END

