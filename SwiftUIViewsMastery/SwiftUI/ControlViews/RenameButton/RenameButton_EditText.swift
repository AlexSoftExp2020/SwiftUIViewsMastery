//
//  RenameButton_EditText.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct RenameButton_EditText: View {
    @State private var editText = false
    @State private var name = "Mark"
    @FocusState private var nameFocused: Bool
    
    var body: some View {
        VStack {
            if editText {
                HStack {
                    TextField("name", text: $name)
                        .textFieldStyle(.roundedBorder)
                        .focused($nameFocused)
                    Button("Done") {
                        editText.toggle()
                    }
                }
            } else {
                HStack {
                    Text(name)
                    Spacer()
                    RenameButton()
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .renameAction {
            editText.toggle()
            nameFocused.toggle()
        }
        .padding()
    }
}

#Preview {
    RenameButton_EditText()
}
