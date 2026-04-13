//
//  SignInWithApple_SizeChanges.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 13/04/2026.
//

import SwiftUI
import _AuthenticationServices_SwiftUI

struct SignInWithApple_SizeChanges: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("SignInWithAppleButton",
                       subtitle: "Sizing",
                       desc: "You will notice that the button content will visually change depending ont the size you give it")
            VStack {
                SignInWithAppleButton(.signIn,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 50, height: 50)
                SignInWithAppleButton(.continue,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 100, height: 100)
                SignInWithAppleButton(.signIn,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(width: 200, height: 50)
                SignInWithAppleButton(.signIn,
                                      onRequest: { request in },
                                      onCompletion: { result in })
                .frame(height: 150)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SignInWithApple_SizeChanges()
}
