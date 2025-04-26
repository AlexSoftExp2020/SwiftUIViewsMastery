//
//  Parent.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct Parent1: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Parent1]? = nil // Had to make this optional
}
