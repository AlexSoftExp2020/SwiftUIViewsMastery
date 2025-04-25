//
//  NavigationController.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

class NavigationController {
    @ViewBuilder
    static func navigate(to screen: Screens) -> some View {
        switch screen {
        case .screen1:
            Image(systemName: "1.square.fill").font(.largeTitle).foregroundStyle(.green)
        case .screen2:
            Image(systemName: "2.square.fill").font(.largeTitle).foregroundStyle(.red)
        case .screen3:
            Image(systemName: "3.square.fill").font(.largeTitle).foregroundStyle(.purple)
        }
    }
}
