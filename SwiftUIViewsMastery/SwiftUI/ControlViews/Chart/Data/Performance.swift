//
//  Performance.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 03.04.2025.
//

struct Performance: Identifiable {
    let employee: String
    let taskData: [PlotInfo]
    
    var id: String { employee }
}
