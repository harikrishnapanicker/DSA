//
//  MergeSort.swift
//  DSA
//
//  Created by HariPanicker on 22/02/22.
//

import Foundation

class MergeSort {
    
    var arr = [Int]()

    init() {
        let _ = sort(arr:  [12,11,13,5,6,7])
    }
    
    func sort(arr: [Int]) -> [Int] {
        self.arr = arr
        sort(firstIndex: 0, lastIndex: arr.count - 1)
        return self.arr
    }
    
    func sort(firstIndex: Int, lastIndex: Int) {
        if firstIndex < lastIndex {
            
            /// 1. Find Middle index
            let middleIndex = firstIndex + (lastIndex - firstIndex) / 2
            
            /// 2. Sort out and build tree
            sort(firstIndex: firstIndex, lastIndex: middleIndex)
            sort(firstIndex: middleIndex + 1, lastIndex: lastIndex)
            
            /// 3. Merge the sorted values
            merge(firstIndex: firstIndex, lastIndex: lastIndex, middleIndex: middleIndex)
        }
    }
    
    func merge(firstIndex: Int, lastIndex: Int, middleIndex: Int) {
        
        /// 1. Find the length of two sub arrays to be merged
        let lengthOfFirstSubarray = middleIndex - firstIndex + 1
        let lengthOfSecSubarray = lastIndex - middleIndex
        
        /// 2. Create two temp arrays
        var firstSubArray = [Int]()
        var secSubArray = [Int]()

        /// 3. Copy the data into two temp arrays
        for i in 0 ..< lengthOfFirstSubarray {
            firstSubArray.append(arr[firstIndex + i])
        }
        for j in 0 ..< lengthOfSecSubarray {
            secSubArray.append(arr[middleIndex + j + 1])
        }
                
        /// 4. Create initial indexes for sub arrays and merged array
        var indexOfFirstSubArray = 0
        var indexOfSecSubArray = 0
        var indexOfMergeArray = firstIndex
        
        /// 5. Iterate the two subarrays
        ///     Compare each index values
        ///     Insert the smallest value in merged array and incriment the indexes
        while indexOfFirstSubArray < lengthOfFirstSubarray && indexOfSecSubArray < lengthOfSecSubarray {
            if firstSubArray[indexOfFirstSubArray] <= secSubArray[indexOfSecSubArray] {
                arr[indexOfMergeArray] = firstSubArray[indexOfFirstSubArray]
                indexOfFirstSubArray += 1
            } else {
                arr[indexOfMergeArray] = secSubArray[indexOfSecSubArray]
                indexOfSecSubArray += 1
            }
            indexOfMergeArray += 1
        }
        
        /// 6. Copy remaining items in first temp array if any
        while indexOfFirstSubArray < lengthOfFirstSubarray {
            arr[indexOfMergeArray] = firstSubArray[indexOfFirstSubArray]
            indexOfFirstSubArray += 1
            indexOfMergeArray += 1
        }
        
        /// 7. Copy remaining items in second temp array if any
        while indexOfSecSubArray < lengthOfSecSubarray {
            arr[indexOfMergeArray] = secSubArray[indexOfSecSubArray]
            indexOfSecSubArray += 1
            indexOfMergeArray += 1
        }
    }
}
