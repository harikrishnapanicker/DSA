//
//  QuickSort.swift
//  DSA
//
//  Created by HariPanicker on 23/02/22.
//

import Foundation

class QuickSort {
    var arr = [Int]()

    init() {
        let _ = sort(arr:  [10, 7, 8, 9, 1, 5,11,3,15,6,12, 19,13,20])
    }
    
    func sort(arr: [Int]) -> [Int] {
        self.arr = arr
        quickSort(arr: arr, low: 0, high: arr.count - 1)
        return self.arr
    }
    
    func pivot(low: Int, high: Int) -> Int {
        let pivot = arr[high]
        var i = low - 1
        for j in low..<high {
            if arr[j] < pivot {
                i += 1
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
        
        let temp = arr[i + 1]
        arr[i + 1] = arr[high]
        arr[high] = temp
        
        return i + 1
    }
    
    /// **Basic sorting starts here :**
    ///    Sorting includes two phases
    ///    - Deviding the array which basically happens at this function
    ///      Swapping the element which happens in pivot() function
    func quickSort(arr: [Int], low: Int, high: Int) {
        if low < high {
            let p = pivot(low: low, high: high)
            quickSort(arr: arr, low: low, high: p - 1)
            quickSort(arr: arr, low: p + 1, high: high)
        }
    }
}
