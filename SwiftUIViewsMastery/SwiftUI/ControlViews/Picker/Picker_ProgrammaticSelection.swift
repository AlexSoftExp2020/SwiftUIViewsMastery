//
//  Picker_ProgrammaticSelection.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.04.2025.
//

import SwiftUI

struct Picker_ProgrammaticSelection: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Programmatic Selection",
                       desc: "You can programmatically change the Picker selection just by changing the bound property.")
            
            Picker("States", selection: $favoriteState) {
                Text("California").tag(0)
                Text("Colorado").tag(1)
                Text("Montana").tag(2)
                Text("Utah").tag(3)
                Text("Vermont").tag(4)
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            
            Button("Select Vermont") {
                withAnimation {
                    favoriteState = 4
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    Picker_ProgrammaticSelection()
}
