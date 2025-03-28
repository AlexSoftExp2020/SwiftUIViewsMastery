//
//  ScrollViewReader_Animating.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.03.2025.
//

import SwiftUI

struct ScrollViewReader_Animating: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ScrollViewReader",
                       subtitle: "Animation",
                       desc: "You can animate the scrolling by putting withAnimation around the scrollTo function.")
            
            ScrollViewReader { scrollViewProxy in
                Button("Animate Scrolling To Bottom") {
                    withAnimation { scrollViewProxy.scrollTo(50) }
                }
                ScrollView(showsIndicators: true) {
                    ForEach(1..<51) { index in
                        //TODO: getimage
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewReader_Animating()
}
