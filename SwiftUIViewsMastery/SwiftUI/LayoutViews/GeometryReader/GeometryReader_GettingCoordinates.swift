//
//  GeometryReader_GettingCoordinates.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_GettingCoordinates: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("GeometryReader",
                       subtitle: "Getting Coordinates",
                       desc: "Getting the coordinates (x, y) of a geometry view is little different. Take a look at this example:",
                       back: .clear)
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("X: \(geometryProxy.frame(in: CoordinateSpace.local).origin.x)")
                    Text("Y: \(geometryProxy.frame(in: CoordinateSpace.local).origin.y)")
                }
                .foregroundStyle(.white)
            }
            .background(Color.pink)
            
            Text("The local coordinate space will always give you zeros.")
            Text("You need to look globally to get the coordinates inside the current views:")
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("X: \(geometryProxy.frame(in: .global).origin.x)")
                    Text("Y: \(geometryProxy.frame(in: .global).origin.y)")
                }
                .foregroundStyle(.white)
            }
            .background(Color.pink)
            .frame(height: 200)
        }
        .font(.title)
        .padding(.horizontal)
    }
}

#Preview {
    GeometryReader_GettingCoordinates()
}
