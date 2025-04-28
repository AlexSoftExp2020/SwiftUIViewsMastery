//
//  ProgressView_ShowingProgress.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_ShowingProgress: View {
    @State private var progress = 0.75
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ProgressView",
                       subtitle: "Showing Progress",
                       desc: "You can one-way bind data to your ProgressView to show progression.",
                       back: .blue,
                       textColor: .white)
            
            ProgressView(value: progress)
                .padding()
            
            DescView("And with a label:",
                     back: .blue,
                     textColor: .white)
            
            ProgressView("Progress (\(Int(progress * 100))%)", value: progress)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_ShowingProgress()
}
