//
//  Extension+Array.swift
//  Observable
//
//  Created by 김혜리 on 2020/06/17.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        // find items
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
