//
//  BinarySearchViewController.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 1/24/16.
//  Copyright © 2016 Minikin. All rights reserved.
//

import UIKit
import PSOperations

class BinarySearchViewController: UIViewController {
  
  let queue = NSOperationQueue()
  
  
  var dictionaryOfStrings = [Int:String]()
  var arrayOfString = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

      // Do any additional setup after loading the view.


    }
  
//  func dictionaryOperation(){
//    
//    let binaryOperation = NSBlockOperation { () in 
//      self.dictionaryOfStrings  = DataStucture.testDictionary(10000)
//    }
//    
//    binaryOperation.completionBlock = {
//      print(self.dictionaryOfStrings.count)
//    }
//    queue.addOperation(binaryOperation)
//  }
//  
  
//  func buildArrayOperation() {
//        
//    let binaryOperation2 = NSBlockOperation { () in
//      self.arrayOfString  = DataStucture.testArray(10000)
//    }
//    
//    binaryOperation2.completionBlock = {
//      print(self.arrayOfString)
//    }
//    
//    queue.addOperation(binaryOperation2)
//  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
