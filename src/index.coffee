

zipcode = require './lib/zipcode'
clc = require('cli-color')
program  = require('commander')

require('autocmdr/lib/help')(program)

argv = process.argv
argvs = []
indexAddress = 0
for val, i in argv
  argvs.push val
  if val is '-a'
    indexAddress = i
    break

# avoid if input contains space
# ex: tw-zipcode -a 新北市 新莊區 中華路二段180號3樓
argvs.push argv.slice(indexAddress+1).join('')


program
  .version('0.0.4')
  .usage('地址')
  .option('-a, --addr [value]', '地址')
  .parse(argvs)


if program.addr and typeof program.addr is 'string'
  addr = program.addr
  try
    result = zipcode.getZipCode(addr)
    console.log result
  catch e
    console.log clc.red("ERROR: #{e.message}")
    process.exit(1)
else
  console.log(clc.red ('No command specified. See \'tw-zipcode --help\':'))
  program.outputHelp()
  process.exit(1)

