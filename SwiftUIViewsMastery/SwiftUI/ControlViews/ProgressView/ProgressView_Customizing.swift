//
//  ProgressView_Customizing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_Customizing: View {
    @State private var progress = 0.75
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ProgressView",
                       subtitle: "Customizing",
                       desc: "You can set the color of the progress indicator with an accent color and the text that goes with it by using a different initializer.",
                       back: .blue,
                       textColor: .white)
            
            ProgressView(value: progress) {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
            .accentColor(.orange)
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue)
                .shadow(radius: 10, y: 16))
            .padding(.horizontal)
            
            Text("For the circular progress view, you need to set the color through the style modifier:")
                .padding(.horizontal)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .orange))
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_Customizing()
}
