//
//  SecureField_Customizations.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.05.2025.
//

import SwiftUI

struct SecureField_Customizations: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        Text("Use a ZStack to put a RoundedRextangle behind a SecureField witha plain textfieldStyle.")
        
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.purple)
            TextField("user name", text: $userName)
                .foregroundStyle(Color.white)
                .padding(.horizontal)
        }
        .frame(height: 40)
        .padding(.horizontal)
        
        Text("Or overlay the SecureField on top of another view or shape.")
        
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.purple)
            .overlay {
                SecureField("password", text: $password)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal)
            }
            .frame(height: 40)
            .padding(.horizontal)
    }
}

#Preview {
    SecureField_Customizations()
}
