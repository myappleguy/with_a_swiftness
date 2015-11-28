//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Todd Pickell on 11/25/15.
//  Copyright © 2015 Todd Pickell. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    var testPhoto = UIImage(named: "testPhoto.jpg")
    
    // MARK: FoodTraker Tests
    func testMealInitHappy() {
        let potentialItem = Meal(name: "Newest Meal", photo: testPhoto!, rating: 5)
        XCTAssertNotNil(potentialItem)
    }
    
    func testMealInitNoName() {
        let potentialItem = Meal(name: "", photo: testPhoto!, rating: 5)
        XCTAssertNil(potentialItem)

    }
    
    func testMealInitBadRating() {
        let potentialItem = Meal(name: "Newest Meal", photo: testPhoto!, rating: -1)
        XCTAssertNil(potentialItem)
    }
    
}
