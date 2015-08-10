//
//  EmojiLog.swift
//  EmojiLog
//
//  Created by Alix.Kang on 8/4/15.
//  Copyright (c) 2015 Alix. All rights reserved.
//

import Foundation

struct Log {
   
    private static func log(emoji: String, content: String, file: AnyObject, line : AnyObject, function:AnyObject ) {
        let fileName = "\(file)".lastPathComponent
        let lineNumber = "\(line)"
        let functionName = "\(function)"
        let printContent =  emoji + "\t" + fileName + " " + lineNumber +  " " + functionName + " " + content
        println("\(printContent)")
    }
    
    // VERBOSE
    static func v(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__, function:AnyObject = __FUNCTION__) {
        log("↣", content: String(format: format, arguments: args), file: file, line:line, function: function)
    }
    // DEBUG
    static func d(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__, function:AnyObject = __FUNCTION__) {
        log("✅", content: String(format: format, arguments: args), file: file, line:line, function: function)
    }
    // INFO
    static func i(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__, function:AnyObject = __FUNCTION__) {
        log("ℹ️", content: String(format: format, arguments: args), file: file, line:line, function: function)
    }
    
    // WARN
    static func w(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__, function:AnyObject = __FUNCTION__) {
        log("⚠️", content: String(format: format, arguments: args), file: file, line:line, function: function)
    }
    
    // ERROR
    static func e(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__, function:AnyObject = __FUNCTION__) {
        log("💔", content: String(format: format, arguments: args), file: file, line:line, function: function)
    }
    
}