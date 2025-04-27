//
//  Picker_Sections.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.04.2025.
//

import SwiftUI

struct Picker_Sections: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Sections",
                       desc: "Use sections within your picker values to organize selections.")
            
            Picker("States", selection: $favoriteState) {
                Section {
                    Text("California").tag(0)
                    Text("Utah").tag(1)
                } header: {
                    Text("West")
                }
                Section {
                    Text("Vermont").tag(2)
                    Text("New Hampshire").tag(3)
                } header: {
                    Text("East")
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Picker_Sections()
}
