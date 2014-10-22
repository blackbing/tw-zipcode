tw-zipcode
=============

# Description

serch Taiwan's zipcode

# Usage

To install tw-zipcode from npm, run:

```
$ npm install -g tw-zipcode
```

## For Example
```
tw-zipcode -a 臺北市中正區八德路１段 //-> 100
tw-zipcode -a 台北市中正區八德路１段88號 //-> 100
tw-zipcode -a 新北市 新莊區 中華路二段111號38樓 //-> 242
```

## Alias
You can also add alias in your bashrc

```
alias zipcode='tw-zipcode -a $1'
```
then you can easily get zipcode from address  like this:
```
zipcode 台北市 中正區   八德路１段88號 //-> 100
```


```node ./bin/tw-zipcode --help```

# License

Copyright (c) 2014 Bingo Yang

[MIT License](http://en.wikipedia.org/wiki/MIT_License)

# Acknowledgments

Built using [generator-commader](https://github.com/Hypercubed/generator-commander).
