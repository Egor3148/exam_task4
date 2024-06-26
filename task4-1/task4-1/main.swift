//
//  main.swift
//  task4-1
//
//  Created by user on 26.06.24.
//
//  Asks the user to enter some text
//  which may contain space symbols and digits
//
//  Gives out an index of max digit found in text
//

import Foundation


//  A dictionary for storing the number value
//  and its position
//  MARK: not essential in current task
var numbers: Dictionary<Character, Int> = [:]

//  Contains the position index of the last digit found
//  If nothing found, it's value is -1
var lastDigitPos: Int = -1

//  Contains the position of the first non-space symbol
var offset: Int = 0



print("Enter any text line:")
let tempStr: String = readLine()!

//  Input array containing the variety of symbols
let input = Array(tempStr)


var i = 0;
var n = input.count - 1
var maxDigit = 0

while(input[i] == " ")
{
    i += 1
}
offset = i

//  Digits are being looked for by standard linear walkthrough
//  All found digits will be stored in the dictionary
for i in 0...n
{
    if (input[i].isNumber)
    {
        numbers[input[i]] = i
        if(Int(String(input[i]))! > maxDigit)
        {
            maxDigit = Int(String(input[i]))!;
            lastDigitPos = i;
        }
    }
    
}

if(lastDigitPos == -1)
{
    print("\nNumbers not found.")
} else
{
    print("\nMax digit value:\t")
    print(maxDigit)
    
    print("\nFound on position:\t")
    print(lastDigitPos - offset)
}
