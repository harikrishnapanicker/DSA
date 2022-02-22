//
//  InsertionSortTests.swift
//  DSATests
//
//  Created by HariPanicker on 21/02/22.
//

import Foundation
import XCTest
@testable import DSA

class InsertionSortTests: XCTestCase {
    
    let testData1Input = [55,3,4,9,11,3,2]
    let testData1Output = [2,3,3,4,9,11,55]

    func testsort() {
        let insertion = InsertionSort()
        XCTAssertEqual(insertion.sort(arr: testData1Input), testData1Output)
    }
}
