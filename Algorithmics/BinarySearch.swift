//
//  BinarySearch.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 1/24/16.
//  Copyright © 2016 Minikin. All rights reserved.
//
//  https://www.khanacademy.org/computing/computer-science/algorithms/binary-search/a/binary-search


import Foundation


struct BinarySearch {

  // MARK:-  LOGARITHMIC TIME
  
  /**

  Binary search is an efficient algorithm for finding an item from an ordered list of items. 
  It works by repeatedly dividing in half theportion of the list that could contain the item, 
  until you've narrowed down the possible locations to just one
  
  */
  
  static func binarySearch(key: Int, iMin:Int, iMax: Int)  {
    
    let midIndex = round(Double((iMin + iMax) / 2 ))
    
    let midNumber = Int(midIndex)
 
    if midNumber > key {
      
      binarySearch(key, iMin: iMin, iMax: Int(midIndex) - 1)
      
    } else if midNumber < key {
      
      binarySearch(key, iMin: Int(midIndex) + 1, iMax: iMax)
      
    } else {
      
      return

//      print("Value \(key) found :  \(stringList[key]!)")
  
    }
    
  }
  
  
  // MARK:- LINEAR TIME
  
  /**

  Looping through the entire array until we find a match

  */

//  static func linerSearh(key: Int) {
//    
//    for n in stringList.keys {
//      if n == key {
//        print("Value at key = \(key) found: \(stringList[key]!)")
//      }
//    }
//    
//  }
  
}


//printTimeElapsedWhenRunningCode("binarySearch()") {
//  binarySearch(49999,iMin:0,iMax: 49999)
//}
//
//printTimeElapsedWhenRunningCode("linerSearh()") {
//  linerSearh(5631)
//}