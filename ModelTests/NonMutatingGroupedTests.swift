//
//  NonMutatingGroupedTests.swift
//  ModelTests
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import XCTest
@testable import Model

class NonMutatingGroupedTests: XCTestCase {
    private let group = IndexedGroup("a", "b", "c", "d", "e")

    func testRemoveElement() {
        let abde = group.removed(at: 2)
        XCTAssertEqual(abde, IndexedGroup("a", "b", "d", "e"))

        let abde2 = group.removed(at: 2)
        XCTAssertEqual(abde2, IndexedGroup("a", "b", "d", "e"))
    }

    func testInsertAnElement() {
        let abcfde = group.inserted("f", at: 3)
        XCTAssertEqual(abcfde, IndexedGroup("a", "b", "c", "f", "d", "e"))
    }

    func testMovedElement() {
        let acdbe = group.moved(from: 1, to: 3)
        XCTAssertEqual(acdbe, IndexedGroup("a", "c", "d", "b", "e"))
    }
}
