//
//  DatePicker_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct DatePicker_Intro: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DatePicker",
                       subtitle: "Introduction",
                       desc: "The DatePicker will just show a date show a date that can be tapped on like a button. You can add an optional label to it.",
                       back: .green)
            
            Text("Default style pulls in:")
            
            DatePicker("Today",
                       selection: $date,
                       displayedComponents: .date)
            .labelsHidden()
            .padding(.horizontal)
            
            Text("With label:")
            
            DatePicker("Today",
                       selection: $date,
                       displayedComponents: .date)
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    DatePicker_Intro()
}
