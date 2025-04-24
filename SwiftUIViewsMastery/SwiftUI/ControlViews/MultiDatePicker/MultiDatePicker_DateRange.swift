//
//  MultiDatePicker_DateRange.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct MultiDatePicker_DateRange: View {
    @State private var dates: Set<DateComponents> = []
    
    var range = Date()..<Calendar.current.date(byAdding: .day, value: 6, to: Date())!
    
    var body: some View {
        Form {
            MultiDatePicker("Date Range", selection: $dates, in: range)
            MultiDatePicker("After Date", selection: $dates, in: Date()...)
            MultiDatePicker("Before Date", selection: $dates, in: ..<Date())
        }
    }
}

#Preview {
    MultiDatePicker_DateRange()
}
