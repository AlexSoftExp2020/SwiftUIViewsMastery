//
//  GeometryReader_Positioning.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader").font(.largeTitle)
            Text("Positioning").font(.title).foregroundStyle(.gray)
            Text("Use the GeometryProxy input parameter to help position child views at different lactions withing the geometry's view.")
                .font(.title)
                .padding()
            
            GeometryReader { geometryProxy in
                Text("Upper Left")
                    .font(.title)
                    .position(x: geometryProxy.size.width / 5,
                              y: geometryProxy.size.height / 10)
                
                Text("Lower Right")
                    .font(.title)
                    .position(x: geometryProxy.size.width - 90,
                              y: geometryProxy.size.height - 40)
            }
            .background(Color.pink)
            .foregroundStyle(.white)
            
            Text("Note: The position modifier uses the view's center point when setting the X and Y parameters.")
                .font(.title)
        }
    }
}

#Preview {
    GeometryReader_Positioning()
}
