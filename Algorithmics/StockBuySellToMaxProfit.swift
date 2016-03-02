//
//  StockBuySellToMaxProfit.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 1/18/16.
//  Copyright © 2016 Minikin. All rights reserved.
//

import Foundation


/**

Stock Buy Sell to Maximize Profit

The cost of a stock on each day is given in an array, find the max profit that you can make by buying and selling in those days. For example, if the given array is {100, 180, 260, 310, 40, 535, 695}, the maximum profit can earned by buying on day 0, selling on day 3. Again buy on day 4 and sell on day 6. If the given array of prices is sorted in decreasing order, then profit cannot be earned at all.

If we are allowed to buy and sell only once, then we can use following algorithm. Maximum difference between two elements. Here we are allowed to buy and sell multiple times. Following is algorithm for this problem.
1. Find the local minima and store it as starting index. If not exists, return.
2. Find the local maxima. and store it as ending index. If we reach the end, set the end as ending index.
3. Update the solution (Increment count of buy sell pairs)
4. Repeat the above steps if end is not reached


http://www.geeksforgeeks.org/stock-buy-sell/

http://keithschwarz.com/interesting/code/?dir=single-sell-profit

http://stackoverflow.com/questions/9514191/maximizing-profit-for-given-stock-quotes

*/

class StockBuySell {
  
  func calculateProfit(stockvalues:[Double]) {
    
    //  #1 for buy, 0 for sell
    //  var toBuy = [1]*stockvalues.count
    var profit = 0.0
    var highestStockPrice = 0.0
    var toBuy = [Int]()
    
    var n = 0
    while n <= (stockvalues.count - 1) {
      toBuy.append(1)
      n++
    }
    
    
    for index in ((stockvalues.count - 1)).stride(to: -1, by: -1) {
      let ai = stockvalues[index]
      if  highestStockPrice <= ai {
        toBuy[index] = 0
        highestStockPrice = ai
      }
      profit += highestStockPrice - ai
    }
    
    print(profit.roundToPlaces(2), " ", toBuy)
    
  }
}


