
//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  ReverseString.swift
//
//  This program reverses string using Recursion
//
//
//  Created by Heejo Suh in Apr 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//


//
class ReverseString {
	
	var sentence: String = ""
	
	init() {
		//Default constructor
	}
	
	func reverse(inputSentence: String) {
		//Reverse the sentence
		let subStringNoLastChar: Substring;
		let lastCharacterOfString: Character;
		
		if(inputSentence.count > 0) {
			//create index because swift needs such a long index
			let index = inputSentence.index(inputSentence.startIndex, offsetBy: inputSentence.count - 1)
			subStringNoLastChar = inputSentence[..<index] //create substring using '..<index'
			lastCharacterOfString = inputSentence[index] //set last character
			print(lastCharacterOfString)
			
			//recall method from inside the same method
			reverse(inputSentence: String(subStringNoLastChar))
		}
	}
}


//Instantiate object
let obj: ReverseString = ReverseString()
print("String to be reversed ->")
obj.reverse(inputSentence: "String to be reversed")
