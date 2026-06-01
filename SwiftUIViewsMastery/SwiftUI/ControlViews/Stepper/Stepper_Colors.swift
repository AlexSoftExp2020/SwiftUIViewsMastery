//
//  Stepper_Colors.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 01/06/2026.
//

import SwiftUI

struct Stepper_Colors: View {
    @State private var contrast = 50
    var body: some View {
        Text("There is no built-in way to change the color of the stepper that I have found. Instead , I had to hide the label and apply a color behind it.")
        Stepper(value: $contrast, in: 0...100) {
            Text("Applying Tint Color (no effect)")
        }
        .tint(.blue)

        HStack {
            Text("My custom Colored Stepper")
            Spacer()
            Stepper("", value: $contrast)
                .background(Color(UIColor.systemTeal))
                .cornerRadius(9)
                .labelsHidden() // Hide the label
        }

        HStack {
            Text("My Custom Colored Stepper")
            Spacer()
            Stepper("", value: $contrast)
                .background(Color.orange)
                .cornerRadius(9)
                .labelsHidden() // Hide the label
        }
    }
}

#Preview {
    Stepper_Colors()
}
