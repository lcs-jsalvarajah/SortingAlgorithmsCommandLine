//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

var deck : [Int] = []
var sortedDeck : [Int] = []

for _ in 1...13
{
    deck.append( random(between: 1, and: 50))
}


// set lowest value to highest expected value, then find lowest
var lowest = 50
var lowestIndex = deck.count
var i = 0
while deck.count > 0
{
    lowest = 50
    lowestIndex = deck.count
    i = 0
    //find the lowest number in the unsorted list
    while i < deck.count
    {
        if lowest > deck[i]
        {
            lowest = deck[i]
            lowestIndex = i
        }
        i += 1
    }
    
    // add the lowest value to the sorted list, then remove that value from the unsorted list
    sortedDeck.append(lowest)
    deck.remove(at: lowestIndex)
}

print("The sorted deck is \(sortedDeck)")
