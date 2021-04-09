//
//  StageGGTabs.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageGGTabs: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            ContentView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}
