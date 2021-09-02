class Event < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ランニング' },
    { id: 3, name: 'ベンチプレス' },
    { id: 4, name: 'スクワット' },
    { id: 5, name: 'デットリフト' },
    { id: 6, name: '腹筋' },
    { id: 7, name: '懸垂' },
    { id: 8, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :mains
end
