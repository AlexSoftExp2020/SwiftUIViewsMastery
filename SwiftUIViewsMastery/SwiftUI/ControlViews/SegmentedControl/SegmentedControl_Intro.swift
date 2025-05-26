//
//  SegmentedControl_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.05.2025.
//

import SwiftUI

struct SegmentedControl_Intro: View {
    @State private var dayNight = "day"
    @State private var tab = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control with an @State variable that will control whick segment is selected. The state variable will match each segment's tag value.")
            
            Picker("", selection: $dayNight) {
                Text("Day").tag("day")
                Text("Night").tag("night")
            }
            .pickerStyle(.segmented)
            .padding()
            
            Text("With Images:")
            
            Picker("", selection: $tab) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

#Preview {
    SegmentedControl_Intro()
}
