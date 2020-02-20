//
//  HackerNewsRepositoryTests.swift
//  MokaChallengeTests
//
//  Created by John Harries on 21/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import XCTest
@testable import MokaChallenge

class HackerNewsRepositoryTests: XCTestCase {
    var repository: HackerNewsRepository?

    override func setUp() {
        self.repository = HackerNewsRepository.shared
    }

    override func tearDown() {
        self.repository = nil
    }

    func testExample() {
        
    }

}
