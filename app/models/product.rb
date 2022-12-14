# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  price       :decimal(, )      not null
#  description :text             not null
#  featured    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :string           not null
#  gender      :string           not null
#  size        :string           not null
#  color       :string           not null
#
class Product < ApplicationRecord
  validates :name, :description, :color, :size, :category, :gender, presence: true
  validates :name, uniqueness: true

  has_many :cartItems
  has_many :reviews
  has_many_attached :photos

end
