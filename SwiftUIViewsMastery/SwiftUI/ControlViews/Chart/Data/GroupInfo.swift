//
//  GroupInfo.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 03.04.2025.
//

import Foundation

struct GroupInfo: Identifiable {
    let id = UUID()
    var x = ""
    var y = 0
    var group = ""
    
    static func fetchData() -> [GroupInfo] {
        [
            GroupInfo(x: "Quarter 1", y: 75, group: "Rod"),
            GroupInfo(x: "Quarter 2", y: 25, group: "Rod"),
            GroupInfo(x: "Quarter 1", y: 50, group: "Lem"),
            GroupInfo(x: "Quarter 3", y: 100, group: "Rod"),
            GroupInfo(x: "Quarter 2", y: 75, group: "Lem"),
            GroupInfo(x: "Quarter 4", y: 50, group: "Rod"),
            GroupInfo(x: "Quarter 3", y: 65, group: "Lem"),
            GroupInfo(x: "Quarter 4", y: 70, group: "Lem")
        ]
    }
}
