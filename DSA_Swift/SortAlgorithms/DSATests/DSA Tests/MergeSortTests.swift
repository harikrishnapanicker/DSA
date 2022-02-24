//
//  MergeSortTests.swift
//  DSATests
//
//  Created by HariPanicker on 22/02/22.
//

import Foundation
import XCTest
@testable import DSA

class MergeSortTests: XCTestCase {
    
    let testData1Input = [55,3,4,9,11,3,2]
    let testData1Output = [2,3,3,4,9,11,55]

    func testMergeSort() {
        let mergeSort = MergeSort()
        XCTAssertEqual(mergeSort.sort(arr: testData1Input), testData1Output)
    }
}
