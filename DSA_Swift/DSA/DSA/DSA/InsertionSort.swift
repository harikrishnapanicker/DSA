//
//  InsertionSort.swift
//  DSA
//
//  Created by HariPanicker on 21/02/22.
//

import Foundation

class InsertionSort {
    
    let testArray = [12,11,13,5,6]
    
    init() {
        let _ = sort(arr: testArray)
    }
    
    func sort(arr: [Int]) -> [Int] {
        
        var sortable = arr
        
        /// 1. Iterating through sortable array (skipping the first index)
        ///     - The first comparison happens between the second element in the arr and first element
        ///     - Hence the first element needs no comparison,so the iteration starts from index = 1
        for i in 1..<sortable.count {
            
            /// 2. Selecting the comparable element (stats with the second element in array)
            let comparableElement = sortable[i]
            
            /// 3. Selecting comparing index which is always in lesser index than comparable element
            var comparingIndex = i - 1
            
            /// 4. Iterating through comparing elements in array starting from comparable element - 1
            ///     - Itration happens in the opposite direction
            while comparingIndex >= 0 && sortable[comparingIndex] > comparableElement {
                
                /// 5. Moving the element greated than the comparable element to the right of the array
                sortable[comparingIndex + 1] = sortable[comparingIndex]
                
                /// 6. decrementing index for iterating backwards
                comparingIndex -= 1
            }
            
            /// 7. Moving to next index in main array
            sortable[comparingIndex + 1] = comparableElement
        }
        return sortable
    }
}
