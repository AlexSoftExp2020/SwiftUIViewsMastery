//
//  HStack_TextAlignment_FirstLast.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.03.2025.
//

import SwiftUI

struct HStack_TextAlignment_FirstLast: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("HStack",
                       subtitle: "First & Last Text Alignment",
                       desc: "The firstTextBaseline will align the bottom of the text on the first lines (\"Amazing\" and \"Rally\").",
                       back: .orange)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Amazing developer")
                    .font(.title3)
                Text("Really amazing developer")
            }
            .frame(width: 250)
            
            DescView("The lastTextBaseline will align the bottom of the text on the last lines (\"developer\" and \"developer\").", back: .orange)
            
            HStack(alignment: .lastTextBaseline) {
                Text("Amazing developer")
                    .font(.title3)
                Text("Really amazing developer")
            }
            .frame(width: 250)
        }
        .font(.title)
    }
}

#Preview {
    HStack_TextAlignment_FirstLast()
}
