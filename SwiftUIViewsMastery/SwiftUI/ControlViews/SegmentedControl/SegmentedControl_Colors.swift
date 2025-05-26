//
//  SegmentedControl_Colors.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.05.2025.
//

import SwiftUI

struct SegmentedControl_Colors: View {
    @State private var selection = 2
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control (Picker)").font(.largeTitle)
            Text("Colors")
                .font(.title).foregroundStyle(.gray)
            Text("You can change the color of segmented controls by using the background modifier.")
            Text("When you add a color, notice the corners:")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.pink)
            .padding(.horizontal)
            
            Text("Adding a corner radius should handle it:")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(.segmented)
            .background(Color.pink)
            .cornerRadius(8)
            .padding(.horizontal)
        }
    }
}

#Preview {
    SegmentedControl_Colors()
}
