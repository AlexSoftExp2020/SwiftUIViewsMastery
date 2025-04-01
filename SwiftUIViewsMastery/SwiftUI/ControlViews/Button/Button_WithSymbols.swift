//
//  Button_WithSymbols.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_WithSymbols: View {
    var body: some View {
        VStack(spacing: 40) {
            Button(action: {}) {
                Text("Button With Symbol")
                    .padding(.horizontal)
                Image(systemName: "gift.fill")
            }
            
            Button(action: {}) {
                Label("Search for Wifi", systemImage: "wifi")
            }
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "video.fill")
                    Text("Record")
                        .padding(.horizontal)
                }
                .padding()
                .foregroundStyle(Color.white)
                .background(RoundedRectangle(cornerRadius: 25))
            }
        }
        .tint(.purple)
        .font(.title)
    }
}

#Preview {
    Button_WithSymbols()
}
