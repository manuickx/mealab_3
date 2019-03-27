class Ingredient < ApplicationRecord

has_many :recipes
has_many :meals, through: :recipes

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%").order('name ASC')
    else
      order('name ASC')
    end
  end

end
