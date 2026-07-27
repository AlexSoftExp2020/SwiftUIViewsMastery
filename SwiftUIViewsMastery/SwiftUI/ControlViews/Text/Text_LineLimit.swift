//
//  Text_LineLimit.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 27/07/2026.
//

import SwiftUI

struct Text_LineLimit: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            Text("Line Limit")
                .font(.title)
                .foregroundStyle(.gray)
            Image("LineLimit")
            Text("The Text view shows read-only text that can be modified in many ways. It wraps automatically. If you want to Limit the text wrapping, add .lineLimit(<number of lines here>).")
            Text("Here, I am limiting the text to just one line.")
                .lineLimit(1)
                .font(.title)
                .padding(.horizontal)
        }
    }
}

#Preview {
    Text_LineLimit()
}
