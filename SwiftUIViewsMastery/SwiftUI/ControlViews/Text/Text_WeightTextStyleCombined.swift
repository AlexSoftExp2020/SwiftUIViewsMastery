//
//  Text_WeightTextStyleCombined.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 28/07/2026.
//

import SwiftUI

struct Text_WeightTextStyleCombined: View {
    var body: some View {
        return VStack(spacing: 20) {
            HStack {
                Image("FontWeight")
                Image(systemName: "plus")
                Image("Font")
            }
            HeaderView("Text",
                       subtitle: "Weight & Text Styles",
                       desc: "These weights can be combined with Text Styles",
                       back: .green,
                       textColor: .white)
            .font(.title)

            Text("Ultralight - Title")
                .fontWeight(.ultraLight)
                .font(.title)
            Text("Thin-Body")
                .fontWeight(.thin)
                .font(.body)
            Text("Light - Large Title")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("Bold-Callout")
                .fontWeight(.bold)
                .font(.callout)
            Text("Black - Title")
                .font(Font.title.weight(.black))//NOTE: Instead of two modifiers, you can combine text style and weight in just ONE modifier like this.
        }
    }
}

#Preview {
    Text_WeightTextStyleCombined()
}
