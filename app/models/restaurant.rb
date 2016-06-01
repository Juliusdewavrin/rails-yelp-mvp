class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  # le dependent Destroy implique qu'en cas de supression d'un resto, le review est aussi supprimé
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

end
