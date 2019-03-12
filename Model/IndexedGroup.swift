//
//  IndexedGroup.swift
//  Model
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import Foundation

struct IndexedGroup<Element> {
    private var elements : [Element]

    init(_ elements: Element...) {
        self.init(elements: elements)
    }
}

extension IndexedGroup {
    mutating func insert(_ newElement: Element, at index: Int) {
        elements.insert(newElement, at: index)
    }
}

extension IndexedGroup {
    var count: Int {
        return elements.count
    }

    subscript(index: Int) -> Element {
        return elements[index]
    }
}

extension IndexedGroup { // non mutating methods
    private init(elements: [Element]) {
        self.elements = elements
    }

    func removed(at index: Int) -> IndexedGroup {
        var mutableElements = elements
        mutableElements.remove(at: index)
        return IndexedGroup(elements: mutableElements)
    }

    func inserted(_ element: Element, at index: Int) -> IndexedGroup {
        var mutableElements = elements
        mutableElements.insert(element, at: index)
        return IndexedGroup(elements: mutableElements)
    }

    func moved(from: Int, to: Int) -> IndexedGroup {
        return removed(at: from).inserted(elements[from], at: to)
    }
}

extension IndexedGroup: Equatable where Element: Equatable {
    func removed(_ element: Element) -> IndexedGroup {
        guard let location = elements.firstIndex(of: element) else {
            return self
        }
        return removed(at: location)
    }
}
