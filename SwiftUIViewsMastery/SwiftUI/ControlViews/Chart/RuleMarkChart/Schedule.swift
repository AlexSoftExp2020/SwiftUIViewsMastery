//
//  Schedule.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import Foundation

struct Schedule: Identifiable {
    let id = UUID()
    var employee = ""
    var hourStart = 0
    var hourEnd = 0
    
    static func fetchData() -> [Schedule] {
        [
            Schedule(employee: "Chris", hourStart: 8, hourEnd: 16),
            Schedule(employee: "Rod", hourStart: 7, hourEnd: 15),
            Schedule(employee: "Lem", hourStart: 9, hourEnd: 17),
            Schedule(employee: "Chase", hourStart: 6, hourEnd: 14)
        ]
    }
}
