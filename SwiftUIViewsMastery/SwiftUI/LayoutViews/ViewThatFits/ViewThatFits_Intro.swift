//
//  ViewThatFits_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct ViewThatFits_Intro: View {
    var body: some View {
        ViewThatFits(in: .horizontal) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.pink.opacity(0.7))
                .overlay(Text("For Landscape"))
                .frame(width: 700, height: 75)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.orange.opacity(0.7))
                .overlay(Text("For Portrait"))
                .frame(width: 350, height: 75)
            
            Text("No views fit")
            
        }
    }
}

#Preview {
    ViewThatFits_Intro()
}
