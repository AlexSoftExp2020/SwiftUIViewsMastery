//
//  PlotInfo.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import Foundation

struct PlotInfo: Identifiable {
    let id = UUID()
    var x = ""
    var y = 0
    
    static func fetchData() -> [PlotInfo] {
        [
            PlotInfo(x: "Quarter 1", y: 75),
            PlotInfo(x: "Quarter 2", y: 25),
            PlotInfo(x: "Quarter 3", y: 100),
            PlotInfo(x: "Quarter 4", y: 50)
        ]
    }
}
