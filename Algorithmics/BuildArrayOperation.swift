//
//  BuildArrayOperation.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 3/2/16.
//  Copyright © 2016 Minikin. All rights reserved.
//

import Foundation
import PSOperations

/// An `Operation` to generate array of random strings and save it to JSON format to disk.
class BuildArrayOperation: Operation {
  
  // MARK: Properties
  
  private let arraySize: Int
  
  /**
      - parameter arraySize: The size of generated array.
  */
  init(arraySize:Int) {
    
    self.arraySize = arraySize
    
    super.init()

    
    name = "Array Operation"
  }
  

  // Save array of strings to file.
  
  override func execute() {
    
    let arrayOfString = buildArray(arraySize)

    let jsonFile = FileSaveHelper(fileName:"arrayOfStrings", fileExtension: .JSON, subDirectory: "SavingFiles", directory: .DocumentDirectory)
    
    do {
      try jsonFile.saveFile(dataForJson: arrayOfString)
    }
    catch {
      print(error)
    }
    
    print("JSON file exists: \(jsonFile.fileExists)")
  }
  
  // Build array of random strings function
  
  private func buildArray(listSize: Int) ->  [String] {
    
    var stringList = [String]()
    
    var i = 0
    
    while i < listSize {
      i++
      let uuid = NSUUID().UUIDString
      stringList.append(uuid)
    }
    
    return stringList
  }
  

}