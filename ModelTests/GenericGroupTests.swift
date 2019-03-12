//
//  GenericGroupTests.swift
//  TurtleWorldTests
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import XCTest
@testable import Model

class GenericGroupTests: XCTestCase {
    let group = IndexedGroup("a", "b", "c", "d", "e")
    let intGroup = IndexedGroup(1, 2, 3)
    let nonEqGroup = IndexedGroup(NonEq(value: 2), NonEq(value: 3))

    func testWhatever() {
        let result = nonEqGroup.removed(at: 1)
        XCTAssertEqual(result.count, 1)
        //        XCTAssertEqual(result, IndexedGroup(NonEq(value: 2)))
    }

    func testAnotherRemoved() {
        let abde = group.removed("c")
        XCTAssertEqual(abde, IndexedGroup("a", "b", "d", "e"))

        let abcde = group.removed("z")
        XCTAssertEqual(abcde, group)
    }
}

struct NonEq {
    let value: Int
}
