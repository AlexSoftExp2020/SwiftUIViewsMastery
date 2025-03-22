//
//  LazyHStack_WithScrolling.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.03.2025.
//

import SwiftUI

struct LazyHStack_WithScrolling: View {
    @State private var whatAppeared = ""
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView("LazyHStack",
                       subtitle: "With ScrollView",
                       desc: "The LazyHStack is best used with many views that scroll off the screen. \"Lazy\" means views off the screen are not created unless shown. THis increases performance.")
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 20) {
                    ForEach(0..<51) { item in
                        Image(systemName: "\(item).circle")
                            .onAppear {
                                whatAppeared = "\(item).circle"
                            }
                    }
                }
            }
            .font(.largeTitle)
            .padding()
            
            Text("\(whatAppeared)")
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    LazyHStack_WithScrolling()
}
