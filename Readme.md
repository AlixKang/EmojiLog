Log with emoji

Example:

``` swift
	let date = NSDate()
    let tzName = NSTimeZone.systemTimeZone().name
    Log.v("Date:%@ TimeZone:%@", args: [date, tzName])
    Log.i("Date:%@ TimeZone:%@", args: [date, tzName])
    Log.d("Date:%@ TimeZone:%@", args: [date, tzName])
    Log.e("Date:%@ TimeZone:%@", args: [date, tzName])
    Log.w("Date:%@ TimeZone:%@", args: [date, tzName])
```

Result

``` java
↣	ViewController.swift 15 Date:2015-08-04 08:39:20 +0000 TimeZone:Asia/Shanghai
ℹ️	ViewController.swift 16 Date:2015-08-04 08:39:20 +0000 TimeZone:Asia/Shanghai
✅	ViewController.swift 17 Date:2015-08-04 08:39:20 +0000 TimeZone:Asia/Shanghai
💔	ViewController.swift 18 Date:2015-08-04 08:39:20 +0000 TimeZone:Asia/Shanghai
⚠️	ViewController.swift 19 Date:2015-08-04 08:39:20 +0000 TimeZone:Asia/Shanghai
```