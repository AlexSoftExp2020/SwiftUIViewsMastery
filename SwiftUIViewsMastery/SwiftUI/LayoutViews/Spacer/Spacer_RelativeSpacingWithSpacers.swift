//
//  Spacer_SpacingWithSpacers.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct Spacer_RelativeSpacingWithSpacers: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Spacer").font(.largeTitle)
            Text("Relative Spacing").foregroundStyle(.gray)
            Text("You can add more spacers to create relative spacing in comparison to other spacers.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow).foregroundStyle(.black)
            HStack(spacing: 50) {
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("33% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("75% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
            }
        }.font(.title)
    }
}

#Preview {
    Spacer_RelativeSpacingWithSpacers()
}
