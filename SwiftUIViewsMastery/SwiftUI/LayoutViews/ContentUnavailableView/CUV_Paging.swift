//
//  CUV_Paging.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct CUV_Paging: View {
    var body: some View {
        TabView {
            ContentUnavailableView("Look",
                                   image: "look",
                                   description: Text("Look through all the pictures in the book"))
            ContentUnavailableView("Learn",
                                   image: "learn",
                                   description: Text("You can remember pictures 60k faster than code."))
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    CUV_Paging()
}
