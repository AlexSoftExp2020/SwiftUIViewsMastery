//
//  DatePicker14_DisplayedComponents.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct DatePicker14_DisplayedComponents: View {
    @State private var date = Date()
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DatePicker - iOS 14+",
                       subtitle: "Displayed Components",
                       desc: "You can show more than just a date. You can ",
                       back: .green)
            
            DatePicker("Today", selection: $date, displayedComponents: .hourAndMinute)
                .labelsHidden()
                .padding(.horizontal)
            
            DatePicker("Today", selection: $date, displayedComponents: [.hourAndMinute, .date]) // The order of the displayed components does not affect the displayed order.
                .labelsHidden()
                .padding(.horizontal)
                .buttonStyle(.bordered)
        }
        .font(.title)
    }
}

#Preview {
    DatePicker14_DisplayedComponents()
}
