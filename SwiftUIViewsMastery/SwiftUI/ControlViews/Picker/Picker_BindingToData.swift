//
//  Picker_BindingToData.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.04.2025.
//

import SwiftUI

struct Picker_BindingToData: View {
    @State private var youTuberName = "Mark"
    var youTubers = ["Sean", "Chris", "Mark", "Scott", "Paul"]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Binding to Data",
                       desc: "Use a ForEach with your Picker view to populate it with data.")
            
            Text("Who do you want to watch today?")
            
            Picker(selection: $youTuberName, label: Text("")) {
                ForEach(youTubers, id: \.self) { name in
                    Row(name: name)
                }
            }
            .pickerStyle(.wheel)
            Text("Selected: \(youTuberName)")
        }
        .font(.title)
    }
}

#Preview {
    Picker_BindingToData()
}

fileprivate struct Row: View {
    var name: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .padding(.trailing)
                .foregroundStyle(Color.orange)
            Text(name)
        }
    }
}
