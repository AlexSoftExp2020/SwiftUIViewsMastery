//
//  HStack_TextAlignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.03.2025.
//

import SwiftUI

struct HStack_TextAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("HStack",
                       subtitle: "Text Alignment",
                       desc: "HStacks have another alignment option to help better align the bottom of text.",
                       back: .orange)
            
            HStack(alignment: .bottom) {
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developer!")
            }
            .font(.body)
            
            DescView("Notice the bottom of the text isn't really aligned above. Use firstTextBaseLine", back: .orange)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developer!")
            }
            .font(.body)
        }
        .font(.title)
    }
}

#Preview {
    HStack_TextAlignment()
}
