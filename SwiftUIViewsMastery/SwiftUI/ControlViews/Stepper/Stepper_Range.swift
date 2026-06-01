//
//  Stepper_Range.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 01/06/2026.
//

import SwiftUI

struct Stepper_Range: View {
    @State private var stars = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper")
                .font(.largeTitle)
                .padding()
            Text("Range of Values")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can set a range for the stepper too. In this example, the range is between one and five.")

            Stepper(value: $stars, in: 1...5) {
                Text("Rating")
            }.padding(.horizontal)

            HStack {
                ForEach(1...stars, id: \.self) { star in
                    Image(systemName: "star.fill")
                }
            }
            .font(.title)
            .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    Stepper_Range()
}
