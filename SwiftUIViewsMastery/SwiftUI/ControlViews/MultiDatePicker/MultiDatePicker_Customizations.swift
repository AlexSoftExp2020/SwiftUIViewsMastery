//
//  MultiDatePicker_Customizations.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct MultiDatePicker_Customizations: View {
    @State private var dates: Set<DateComponents> = [
        DateComponents(year: 2022, month: 9, day: 6),
        DateComponents(year: 2022, month: 9, day: 7),
        DateComponents(year: 2022, month: 9, day: 8)
    ]
    var body: some View {
        MultiDatePicker("Customizations", selection: $dates)
            .tint(.red)
            .foregroundStyle(.purple) // Does nothing
            .background(.quaternary.opacity(0.5), in: RoundedRectangle(cornerRadius: 16))
            .padding()
    }
}

#Preview {
    MultiDatePicker_Customizations()
}
