//
//  ModelTests.swift
//  ModelTests
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import XCTest
@testable import Model

class IndexedGroupTests: XCTestCase {
    private let group = IndexedGroup("a", "b", "c", "d", "e")

    func testCanCreateIndexedGroupInstance() {
        XCTAssertNotNil(group)
    }

    func testModelContains5Elements() {
        XCTAssertEqual(group.count, 5)
    }

    func testThirdElementIsC() {
        XCTAssertEqual(group[2], "c")
    }

    func testThirdElementIsD() {
        XCTAssertEqual(group[3], "d")
    }

    func testTwoGroupsWithIdenticalContentsAreEqual() {
        let equalGroup = IndexedGroup("a", "b", "c", "d", "e")
        XCTAssertEqual(equalGroup, group)
    }

    func testEmptyGroupHasNoElements() {
        let emptyGroup = IndexedGroup<String>()
        XCTAssertEqual(emptyGroup.count, 0)
    }
}
