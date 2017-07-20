class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :size_x, -> (x) { where("sizeItem=?", x)}
  scope :only_user, -> { where(user_id: nil)}
  
  after_destroy :ultimo_item

  #al borrar el ultimo item de una categoria se borrar la categoria
  def ultimo_item
  	cats = Category.all
  		cats.each do |n|
  			if n.items.empty?
  				n.destroy
  			end
  		end
  end

end

