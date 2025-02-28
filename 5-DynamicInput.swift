#!/usr/bin/env xcrun swift

import Foundation

let userInput = Process.arguments

if userInput.count > 1 {

    let flag = userInput[1]
    
    if flag == "--print" {
        println("\nPrinting Args: \(Process.arguments)\n")
    }

    if flag == "--help" {
        println("\nWhat would you like help with?\n")

        let stdin = NSFileHandle.fileHandleWithStandardInput()
        let inputString = NSString(data: stdin.availableData, encoding: NSUTF8StringEncoding) as String

        if inputString.isEmpty == false {
            println("\nYou're going to need a lot of help with that...\n")
        }
    }

    // Handle other flags...

}
