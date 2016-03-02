//
//  benchmarkSwift.swift
//  algorithmics
//
//  Created by Sasha Minikin on 12/3/15.
//  Copyright © 2015 Minikin. All rights reserved.
//

import Foundation

struct Benchmark {
  
  /**
   The former will log out the time required for a given section of code,
   with the latter returning that as a float.
   Read more : http://stackoverflow.com/questions/25006235/how-to-benchmark-swift-code-execution
   */
  
  static func printTimeElapsedWhenRunningCode(title:String, operation:()->()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed)s")
  }
  
  static func timeElapsedInSecondsWhenRunningCode(operation:()->()) -> Double {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    return Double(timeElapsed)
  }
}

