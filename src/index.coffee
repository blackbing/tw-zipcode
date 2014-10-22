

zipcode = require './lib/zipcode'
program  = require('commander')

require('autocmdr/lib/help')(program)


program
  .version('0.0.1')
  .usage('地址')
  .option('-a, --addr [value]', '地址')
  .parse(process.argv)

if program.addr and typeof program.addr is 'string'
  addr = program.addr
  result = zipcode.getZipCode(addr)
  if not result
    process.exit(1)
    return
  console.log result
else
  console.log('No command specified. See \'tw-zipcode --help\':')
  program.outputHelp()
  process.exit(1)

