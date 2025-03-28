//
//  ZStack_Aligning.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct ZStack_Aligning: View {
    var body: some View {
        VStack(spacing:  20) {
            HeaderView("ZStack",
                       subtitle: "Aligning",
                       desc: "The ZStack allows you to align all the views within it.",
                       back: .green,
                       textColor: .white)
            
            ZStack(alignment: .topLeading) {
                Image("yosemite_large")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding()
            }
            
            ZStack(alignment: .bottomTrailing) {
                Image("yosemite_large")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                
                Text("Yosemite National Park").font(.title).padding()
            }
        }
        .font(.title)
    }
}

#Preview {
    ZStack_Aligning()
}
