//
//  DailyInfo.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import Foundation

struct DailyInfo: Identifiable {
    let id = UUID()
    let x: Date
    let y: Int
    
    static func fetchData() -> [DailyInfo] {
        [
            DailyInfo(x: Date.from(2023, 1, 15), y: 75),
            DailyInfo(x: Date.from(2023, 2, 15), y: 25),
            DailyInfo(x: Date.from(2023, 3, 15), y: 100),
            DailyInfo(x: Date.from(2023, 4, 15), y: 50)
        ]
    }
}
