//
//  MultiDatePicker_Label.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct MultiDatePicker_Label: View {
    @State private var dates: Set<DateComponents> = []
    var body: some View {
        VStack {
            MultiDatePicker(selection: $dates) {
                Text("Pick a Date")
                    .font(.largeTitle.weight(.bold))
            }
            
            List {
                Section("Selected Dates") {
                    ForEach(Array(dates), id: \.self) { date in
                        Text("\(date.month!)/\(date.day!)")
                    }
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    MultiDatePicker_Label()
}
