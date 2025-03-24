//
//  GeometryReader_SafeAreaInsets.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_SafeAreaInsets: View {
    var body: some View {
        HeaderView("GeometryReader",
                   subtitle: "SafeAreaInsets",
                   desc: "GeometryReader can also tell you the safe area insets it has.",
                   back: .clear)
        
        GeometryReader { geometryProxy in
            VStack {
                Text("geometryProxy.safeAreaInsets.leading: \(geometryProxy.safeAreaInsets.leading)")
                Text("geometryProxy.safeAreaInsets.trailing: \(geometryProxy.safeAreaInsets.trailing)")
                Text("geometryProxy.safeAreaInsets.top: \(geometryProxy.safeAreaInsets.top)")
                Text("geometryProxy.safeAreaInsets.bottom: \(geometryProxy.safeAreaInsets.bottom)")
            }
            .padding()
        }
        .background(Color.pink)
        .foregroundStyle(.white)
    }
}

#Preview {
    GeometryReader_SafeAreaInsets()
}
