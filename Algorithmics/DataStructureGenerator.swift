//
//  DataStructureGenerator.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 1/24/16.
//  Copyright © 2016 Minikin. All rights reserved.
//

import Foundation

struct DataStucture {
  
  // MARK: - Build dictionary
  
  static func buildDictionary(listSize:Int) -> [Int:String] {
    
    var stringList = [Int:String]()
    
    var i = 0
    
    while i < listSize {
      i++
      let uuid = NSUUID().UUIDString
      stringList.updateValue(uuid, forKey: i)
    }
    
    return stringList
  }
  
  
  // MARK: - Build array of string
  
  static func buildArray(listSize: Int) ->  [String] {
    
    var stringList = [String]()
    
    var i = 0
    
    while i < listSize {
      i++
      let uuid = NSUUID().UUIDString
      stringList.append(uuid)
    }
    
    return stringList
  }
  

  // MARK: - Recursively build dictionary
  
  // static func stringList(listSize: Int) -> [Int:String] {
  //
  //    var stringDictionary = [Int:String]()
  //
  //    if listSize > 1 {
  //      stringList(listSize - 1)
  //      print("Recursively", listSize)
  //      let uuid = NSUUID().UUIDString
  //      stringDictionary.updateValue(uuid, forKey: listSize)
  //    }
  //
  //    print(stringDictionary.count)
  //    return stringDictionary
  //  }
  
  
  
  
}