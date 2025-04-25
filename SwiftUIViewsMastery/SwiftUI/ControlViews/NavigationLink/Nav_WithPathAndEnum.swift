//
//  Nav_WithPathAndEnum.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

enum Screens {
    case screen1
    case screen2
    case screen3
}

struct Nav_WithPathAndEnum: View {
    @State private var navPath: [Screens] = []
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Button("Deep Link to Screen 2") {
                    navPath.append(Screens.screen1)
                    navPath.append(Screens.screen2)
                }
                Button("Deep Link to Screen 3") {
                    navPath.append(Screens.screen1)
                    navPath.append(Screens.screen2)
                    navPath.append(Screens.screen3)
                }
            }
            .navigationDestination(for: Screens.self) { screenEnum in
                NavigationController.navigate(to: screenEnum)
            }
            .navigationTitle("Navigate with Path")
        }
        .font(.title)
    }
}

#Preview {
    Nav_WithPathAndEnum()
}
