//
//  MultiDatePicker_PresentingInSheet.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct MultiDatePicker_PresentingInSheet: View {
    @State private var showDates = false
    @State private var dates: Set<DateComponents> = []
    
    private var datesArray: [String] {
        dates.sorted{date1, date2 in
            date1.date! < date2.date!
        }.map { date in
            "\(date.month!)/\(date.day!)"
        }
    }
    
    var body: some View {
        VStack {
            LabeledContent("Dates:") {
                Button {
                    showDates = true
                } label: {
                    if dates.count == 0 {
                        Text("Select")
                    } else {
                        Text(datesArray, format: .list(type: .and, width: .short))
                    }
                }
            }
            .padding()
            
            Spacer()
        }
        .sheet(isPresented: $showDates) {
            VStack {
                MultiDatePicker("Customizations", selection: $dates)
                Button("Done") { showDates = false }
                    .buttonStyle(.borderedProminent)
            }
            .presentationDetents([.medium])
        }
        .font(.title)
    }
}

#Preview {
    MultiDatePicker_PresentingInSheet()
}
