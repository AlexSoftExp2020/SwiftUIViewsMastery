//
//  LazyVStack_WithScrolling.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

//struct LazyVStack_WithScrolling: View {
//    @State private var teams = Data.getTeams()
//    
//    var body: some View {
//        VStack(spacing: 10) {
//            HeaderView("LazyVStack",
//                       subtitle: "With ScrollView",
//                       desc: "The LazyVStack is best used with many views that scroll off the scree. \"Lazy\" means views off the screen are not created unless shown. This increases performance.")
//            ScrollView {
//                LazyVStack(spacing: 5) {
//                    ForEach(teams) { team in
//                        Section {
//                            ForEach(team.people) { person in
//                                Image("\(person.imageName)")
//                                    .resizable()
//                                    .frame(width: 300, height: 300)
//                            }
//                        } header: {
//                            TeamVerticalHeaderView(team: team)
//                        } footer: {
//                            TeamVerticalFooterView(team: team)
//                        }
//                    }
//                }
//            }
//            Spacer()
//        }
//        .font(.title)
//    }
//}
//
//#Preview {
//    LazyVStack_WithScrolling()
//}
