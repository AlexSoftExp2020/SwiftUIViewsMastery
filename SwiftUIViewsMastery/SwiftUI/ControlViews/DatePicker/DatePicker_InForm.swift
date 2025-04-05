//
//  DatePicker_InForm.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct DatePicker_InForm: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DatePicker",
                       subtitle: "Used in a Form",
                       desc: "When used in a form, the date picker used the compact styling by default.",
                       back: .green)
            
            Form {
                DatePicker("Today",
                           selection: $date,
                           displayedComponents: .date)
                
                Section {
                    Text("Graphical Picker Style:")
                    DatePicker("Birthday",
                               selection: $date,
                               displayedComponents: .date)
                    .datePickerStyle(.graphical)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    DatePicker_InForm()
}
