//
//  ViewThatFits_Vertical.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct ViewThatFits_Vertical: View {
    var body: some View {
        ViewThatFits(in: .vertical) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.purple.opacity(0.7))
                .overlay(Text("For Portarait"))
                .frame(width: 200, height: 500)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue.opacity(0.7))
                .overlay(Text("For Landscape"))
                .frame(width: 400, height: 100)
            
            Text("No views fit")
        }
    }
}

#Preview {
    ViewThatFits_Vertical()
}
