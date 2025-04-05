//
//  DatePicker_Styles.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct DatePicker_Styles: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("DatePicker",
                       subtitle: "Styles",
                       desc: "Graphical Style",
                       back: .green)
            
            DatePicker("Birthday",
                       selection: $date,
                       displayedComponents: .date)
            .datePickerStyle(.graphical)
            .frame(width: 320)
            
            DescView("Wheel Style", back: .green)
            DatePicker("Birthday", selection: $date, displayedComponents: .date)
                .datePickerStyle(.wheel)
                .labelsHidden()
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    DatePicker_Styles()
}
