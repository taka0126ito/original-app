class Sets < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1' },
    { id: 3, name: '2' },
    { id: 4, name: '3' },
    { id: 5, name: '4' },
    { id: 6, name: '5' },
    { id: 7, name: '6' },
    { id: 8, name: '7' }
  ]
  include ActiveHash::Associations
  has_many :mains
end
