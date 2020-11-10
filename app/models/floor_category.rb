class FloorCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '1階' },
    { id: 2, name: '2階' },
    { id: 3, name: '3階' },
    { id: 4, name: '外回り' }
  ]
end
