//
//  ViewController.swift
//  EmojiLog
//
//  Created by Alix.Kang on 8/4/15.
//  Copyright (c) 2015 Alix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        let timeZoneName = NSTimeZone.systemTimeZone().name
        Log.v("Date:%@ TimeZone:%@", args: [date, timeZoneName])
        Log.i("Date:%@ TimeZone:%@", args: [date, timeZoneName])
        Log.d("Date:%@ TimeZone:%@", args: [date, timeZoneName])
        Log.e("Date:%@ TimeZone:%@", args: [date, timeZoneName])
        Log.w("Date:%@ TimeZone:%@", args: [date, timeZoneName])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

