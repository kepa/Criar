class Article < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  validates_presence_of :title,:content , :category , :message => "Não pode ser em branco"
  belongs_to :category
  before_destroy :check_if_is_about_us

  def check_if_is_about_us
    if self.id == 1
        errors.add(:base, "não pode apagar próprio arquivo")
        false
    end
  end
end

