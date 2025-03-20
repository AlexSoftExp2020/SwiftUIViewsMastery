//
//  Alignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundStyle(.gray)
            Text("By default, views in a VStack are center aligned.")
            
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading Alignment")
                    .font(.title)
                Divider() // Creates a thin line (Push-out view)
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.blue))
            .padding()
        }
    }
}

#Preview {
    Alignment()
}
