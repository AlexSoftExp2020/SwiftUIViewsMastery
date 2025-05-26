//
//  SecureField_KeyboardSafeArea.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.05.2025.
//

import SwiftUI

struct SecureField_KeyboardSafeArea: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image("Logo")
            Spacer()
            
            HeaderView("SecureField",
                       subtitle: "Keyboard Safe Area",
                       desc: "SecureFields will automatic move into view when the keyboard appears. The keyboard adjusts the bottom safe area so it will not cover views.",
                       back: .purple,
                       textColor: .white)
            
            TextField("user name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SecureField_KeyboardSafeArea()
}
