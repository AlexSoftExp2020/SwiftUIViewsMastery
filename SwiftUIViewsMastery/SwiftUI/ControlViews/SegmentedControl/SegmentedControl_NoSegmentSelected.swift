//
//  SegmentedControl_NoSegmentSelected.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.05.2025.
//

import SwiftUI

struct SegmentedControl_NoSegmentSelected: View {
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control (Picker)").font(.largeTitle)
            Text("No segment Selected")
                .font(.title)
                .foregroundStyle(.gray)
            Text("This segmented control will have nothing selected because the default state variable does not match any of the segment tag values.")
            Text("How many meals do you eat?")
                .foregroundStyle(.gray)
                .font(.title)
            
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("More").tag(4)
            }
            .pickerStyle(.segmented)
            .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.red, lineWidth: selection == 0 ? 1 : 0))
            .padding()
            
            Text("The red outline will go away once a selection is made.")
        }
    }
}

#Preview {
    SegmentedControl_NoSegmentSelected()
}
