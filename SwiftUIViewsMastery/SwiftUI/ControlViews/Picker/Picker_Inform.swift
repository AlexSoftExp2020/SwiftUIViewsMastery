//
//  Picker_Inform.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct Picker_Inform: View {
    @State private var selectedDayOption = "2"
    var numberOfDaysOptions = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        VStack {
            Form {
                Picker("Frequency", selection: $selectedDayOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                Picker("Frequency", selection: $selectedDayOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.menu) // Add this modifier to make it use the accent color
                Picker("Frequency", selection: $selectedDayOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.inline)
                
                Picker("Frequency", selection: $selectedDayOption) {
                    ForEach(numberOfDaysOptions, id: \.self) {
                        Text("\($0) Days").tag($0)
                    }
                }
                .pickerStyle(.wheel)
            }
            .navigationTitle("Picker")
        }
        .font(.title)
    }
}

#Preview {
    Picker_Inform()
}
