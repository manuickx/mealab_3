class Meal < ApplicationRecord

belongs_to :category
has_many :recipes
has_many :ingredients, through: :recipes

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%").order('name ASC')
    else
      order('name ASC')
    end
  end

end
