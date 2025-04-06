//
//  SectionTextAndImage.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 06.04.2025.
//

import SwiftUI

struct SectionTextAndImage: View {
    var name: String
    var image: String
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundStyle(Color.purple)
    }
}

#Preview {
    SectionTextAndImage(name: "SomeText", image: "circle")
}
