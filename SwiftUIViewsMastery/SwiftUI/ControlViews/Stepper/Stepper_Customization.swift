//
//  Stepper_Customization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 01/06/2026.
//

import SwiftUI

struct Stepper_Customization: View {
    @State private var contrast = 0
    var body: some View {
        Text("A foreground and background color can be set.")
        Stepper(onIncrement: {}, onDecrement: {}) {
            Text("Custom Stepper")
                .font(.title)
                .padding(.vertical)
        }
        .padding(.horizontal)
        .background(Color.blue)
        .foregroundStyle(.white)

        Text("Notice the minus and plus buttons are not affected. The platforms determine how this will be shown.")
        Text("You can add images too.")
            .frame(maxWidth: .infinity).padding()
            .background(Color.blue).foregroundStyle(Color.white)
            .font(.title)

        Stepper(value: $contrast, in: 0...100) {
            //SwiftUI implicitly uses as HSTack here
            Image(systemName: "circle.lefthalf.fill")
            Text("\(contrast)/100")
        }
        .font(.title)
        .padding(.horizontal)
        .foregroundStyle(.blue)
    }
}

#Preview {
    Stepper_Customization()
}
