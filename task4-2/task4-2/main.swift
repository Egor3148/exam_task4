//
//  main.swift
//  task4-2
//
//  Created by user on 26.06.24.
//
//  Asks the user to enter some text
//  which may contain space symbols and digits
//
//  Gives out the length of the longest
//  digit sequence found
//

import Foundation


//  A dictionary for storing the number value
//  and its position
//  MARK: not essential in current task
var numbers: Dictionary<Character, Int> = [:]

//  Contains the max digit sequence length found
//  If nothing found, it's value is 0
var maxLength: Int = 0

//  Flag for detecting the sequence
//  Is set to "true" when the last symbol was digit
 var prevDigit: Bool = false



print("Enter any text line:")
let tempStr: String = readLine()!

//  Input array containing the variety of symbols
let input = Array(tempStr)


var i = 0;
var n = input.count - 1
var tempLength = 0;

if(input[0].isNumber)
{
    prevDigit = true;
    tempLength += 1;
}

for i in 1...n
{
    if(input[i].isNumber)
    {
        if(!prevDigit)
        {
            tempLength = 1
        } else
        {
            tempLength += 1
        }
    } else
    {
        if(tempLength > maxLength)
        {
            maxLength = tempLength
        }
        
        prevDigit = false
        tempLength = 0
    }
    
    prevDigit = true
}
if(tempLength > maxLength)
{
    maxLength = tempLength
}



if(maxLength == 0)
{
    print("No digits found")
} else
{
    print("Max digit sequence length found:")
    print(maxLength)
}
