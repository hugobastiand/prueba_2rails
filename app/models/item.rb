class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user
  scope :cantidad_X, ->{ where(premium: true)}
  
  last_destroy :log_destroy_action

  def log_destroy_action
    puts 'Artículo borrado'
  end

end
