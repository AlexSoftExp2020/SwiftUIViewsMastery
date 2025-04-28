//
//  ProgressView_Tint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_Tint: View {
    @State private var progress = 0.75
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ProgressView",
                       subtitle: "Tint",
                       desc: "Starting in iOS 15, you use the tint modifier to change the color of the progress views.")
            ProgressView(value: progress) {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
            .tint(.mint)
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.yellow)
                .shadow(radius: 10, y: 16))
            .padding(.horizontal)
            
            Text("For the circular progress view, you need to set the color through the style modifier:")
                .padding(.horizontal)
            
            ProgressView()
                .tint(.red)
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_Tint()
}
