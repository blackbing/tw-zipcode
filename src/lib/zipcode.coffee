data = require('../data/zipcode.json')
class ZipCode
  numrmt = '[0-9一二三四五六七八九零十１２３４５６７８９０○]'
  addrmt = new RegExp('(([台臺][北中南東]|北|高|新北|宜蘭|花蓮|金門|南投|屏東|苗栗|桃園|高雄|基隆|連江|雲林|新竹|嘉義|彰化|澎湖)([縣市])(.{2,5}[鄉鎮市區])?(.{2,5}[村里鄰])?(.{2,5}[路街道段])?(' + numrmt + '段)?(.{1,4}巷)?(' + numrmt + '{1,4}弄)?(.{1,6}[號号])?([之bB]' + numrmt + '|' + numrmt + '{1,2}[fFｆＦ樓]){0,1})', 'g')
  getZipCode: (addr)->
    #trim all space
    addr = addr.replace(/[  ]/, '')
    result = addrmt.exec(addr)
    if not result
      return null
    else
      cityName = result[2]
      cityName = cityName.replace('臺', '台')
      city = cityName + result[3]
      district = result[4]
      return data[city][district]



module.exports = new ZipCode()
