//
//  EmojiLog.swift
//  EmojiLog
//
//  Created by Alix.Kang on 8/4/15.
//  Copyright (c) 2015 Alix. All rights reserved.
//

import Foundation

struct Log {
   
    #if DEBUG
    private static func log(emoji: String, content: String, file: AnyObject, line : AnyObject) {
        let fileName = "\(file)".lastPathComponent
        let lineNumber = "\(line)"
        let printContent =  emoji + "\t" + fileName + " " + lineNumber + " " + content
        println("\(printContent)")
    }
    
    // VERBOSE
    static func v(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {
        log("↣", content: String(format: format, arguments: args), file: file, line:line)
    }
    // DEBUG
    static func d(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {
        log("✅", content: String(format: format, arguments: args), file: file, line:line)
    }
    // INFO
    static func i(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {
        log("ℹ️", content: String(format: format, arguments: args), file: file, line:line)
    }
    
    // WARN
    static func w(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {
        log("⚠️", content: String(format: format, arguments: args), file: file, line:line)
    }
    
    // ERROR
    static func e(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {
        log("💔", content: String(format: format, arguments: args), file: file, line:line)
    }
    #else
    private static func log(emoji: String, content: String, file: AnyObject, line : AnyObject) {}
    static func v(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {}
    static func d(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {}
    static func i(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {}
    static func w(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {}
    static func e(format: String, args: [CVarArgType], file: AnyObject = __FILE__, line: AnyObject = __LINE__) {}
    #endif
    
    
}