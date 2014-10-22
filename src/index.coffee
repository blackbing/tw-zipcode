

zipcode = require './lib/zipcode'
clc = require('cli-color')
program  = require('commander')

require('autocmdr/lib/help')(program)


program
  .version('0.0.1')
  .usage('地址')
  .option('-a, --addr [value]', '地址')
  .parse(process.argv)

if program.addr and typeof program.addr is 'string'
  addr = program.addr
  try
    result = zipcode.getZipCode(addr)
    console.log clc.green(result)
  catch e
    console.log clc.red("ERROR: #{e.message}")
    process.exit(1)
else
  console.log(clc.red ('No command specified. See \'tw-zipcode --help\':'))
  program.outputHelp()
  process.exit(1)

