//
//  ScrollViewReader_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.03.2025.
//

import SwiftUI

struct ScrollViewReader_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ScrollViewReader",
                       subtitle: "Introduction",
                       desc: "Use the ScrollViewReader to access the scrollTo function so you can programmatically scroll to a specific view.")
        }
        
        ScrollViewReader { scrollViewProxy in
            Button("Scroll To Bottom") {
                scrollViewProxy.scrollTo(50)
            }
            ScrollView {
                ForEach(1..51) { index in
                    //MARK: TODO getImage()
                }
            }
        }
    }
}

#Preview {
    ScrollViewReader_Intro()
}
