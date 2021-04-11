//
//  StageGGApp.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO Pass this list into StageGGTabs so it can go into the stage Tab.
// We might want to make an overarching "ViewModel" that has a lot of the stuff we need in it
// Because we'll also be passing in whatever configuration the Stage selecting/Rules tab needs

@main
struct StageGGApp: App {
    
    @ObservedObject var viewModel: AppViewModel = AppViewModel(stages: [
        Stage(name: "Final Destination", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "fd_stage_image" ),
        Stage(name: "Battlefield", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "bf_stage_image" ),
        Stage(name: "Pokemon Stadium 2", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "ps2_stage_image" ),
        Stage(name: "Smashville", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "sv_stage_image" ),
        Stage(name: "Town and City", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "tc_stage_image" ),
        Stage(name: "Small Battlefield", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "sb_stage_image" ),
        Stage(name: "Kalos Pokémon League", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "kalos_stage_image" ),
        Stage(name: "Yoshi's Story", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "ys_stage_image" ),
        Stage(name: "Yoshi's Island", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "yi_stage_image" ),
        Stage(name: "Lylat Cruise", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "ly_stage_image" ),
        Stage(name: "Unova Pokémon League", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "unova_stage_image" ),
        Stage(name: "WarioWare, Inc.", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "ww_stage_image" ),
        Stage(name: "Castle Siege", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "cs_stage_image" )
    ])
    
    var body: some Scene {
        WindowGroup {
            StageGGTabs(viewModel: viewModel)
        }
    }
}


