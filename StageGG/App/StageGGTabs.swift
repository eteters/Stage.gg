//
//  StageGGTabs.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageGGTabs: View {
    
    @ObservedObject var viewModel: AppViewModel
    
    var body: some View {
        TabView {
            
            StageView(viewModel: viewModel)
            .tabItem {
                Label("Stages & Bans", image: "Stage Icon Vector")
            }

            StageListView(viewModel: viewModel)
                .tabItem {
                    Label("Stage List", systemImage: "list.bullet")
                }
        }
    }
}

struct StageGGTabs_Previews: PreviewProvider {
    static var previews: some View {
        StageGGTabs(viewModel: AppViewModel(stages: Stage.multiStage(count: 5)))
    }
}
