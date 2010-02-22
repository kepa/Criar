class Category < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name , :message => "Não pode ser em branco"
  has_many :articles
  after_destroy :clear_articles
  def clear_articles
   self.articles.each do |art|
    art.destroy
   end
  end
end
