//
//  Picker_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.04.2025.
//

import SwiftUI

struct Picker_Intro: View {
    @State private var favoriteState =  1
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Introduction",
                       desc: "You can associate a property with the picker rows' tag values.")
            
            Picker("States", selection: $favoriteState) {
                Text("California").tag(0)
                Text("Utah").tag(1)
                Text("Vermont").tag(2)
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Picker_Intro()
}
