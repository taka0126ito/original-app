class Weight < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10' },
    { id: 3, name: '20' },
    { id: 4, name: '30' },
    { id: 5, name: '40' },
    { id: 6, name: '50' },
    { id: 7, name: '55' },
    { id: 8, name: '60' },
    { id: 9, name: '65' },
    { id: 10, name: '70' },
    { id: 11, name: '75' },
    { id: 12, name: '80' },
    { id: 13, name: '85' },
    { id: 14, name: '90' },
    { id: 15, name: '95' },
    { id: 16, name: '100' },
    { id: 17, name: '105' },
    { id: 18, name: '110' },
    { id: 19, name: '115' },
    { id: 20, name: '120' },
    { id: 21, name: '125' },
    { id: 22, name: '130' },
    { id: 23, name: '135' },
    { id: 24, name: '140' }
  ]

  include ActiveHash::Associations
  has_many :mains
end
