class RoomCategory < ActiveHash::Base
  self.data =[
    { id: 1, name:'玄関' },
    { id: 2, name:'リビング・ダイニング' },
    { id: 3, name:'和室' },
    { id: 4, name:'キッチン' },
    { id: 5, name:'洗面所' },
    { id: 6, name:'浴室' },
    { id: 7, name:'トイレ' },
    { id: 8, name:'階段' },

    { id: 9, name:'洋室A'},
    { id: 10, name:'洋室B'},
    { id: 11, name:'洋室C'},
    { id: 12, name:'バルコニー'},
    { id: 13, name:'キッチン'},
    { id: 14, name:'洗面所'},
    { id: 15, name:'浴室'},
    { id: 16, name:'トイレ'},
    { id: 17, name:'階段'},

    { id: 18, name:'洋室A' },
    { id: 19, name:'洋室B' },
    { id: 20, name:'洋室C' },
    { id: 21, name:'バルコニー' },
    { id: 22, name:'トイレ' },

    { id: 23, name:'建物外周'},
    { id: 24, name:'駐車スペース' },
    { id: 25, name:'玄関ポーチ' }
  ]
end
