//
//  MutatingGroupTests.swift
//  ModelTests
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import XCTest
@testable import Model

class MutatingGroupTests: XCTestCase {
    var group = IndexedGroup("a", "b", "c", "d", "e")

    func testInsertAnElement() {
        group.insert("f", at: 3)
        XCTAssertEqual(group, IndexedGroup("a", "b", "c", "f", "d", "e"))
    }
}
