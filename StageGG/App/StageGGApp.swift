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
        Stage(name: "Final Destination", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "No platforms", loves: "Samus, Greninja, Pikachu, Rob", hates: "Snake, Mario"), imageName: "fd_stage_image" ),
        Stage(name: "Battlefield", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "Tri plat", loves: "Mario, Ike, Sheik, Joker, Fox", hates: "Kirby"), imageName: "bf_stage_image" ),
        Stage(name: "Pokemon Stadium 2", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "Two platform", loves: "Palutena, Lucina, ZSS", hates: "None"), imageName: "ps2_stage_image" ),
        Stage(name: "Smashville", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "One center platform, closer side blastzones", loves: "Wolf, Lucina, Ike, Zelda", hates: "Luigi"), imageName: "sv_stage_image" ),
        Stage(name: "Town and City", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "Like FD, with moving platforms", loves: "Banjo, Rob, Snake", hates: "Ike, Byleth, Ice Climbers"), imageName: "tc_stage_image" ),
        Stage(name: "Small Battlefield", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "Two platform", loves: "Wario, Mario, Link, Zelda", hates: "Cloud, Min Min, Terry"), imageName: "sb_stage_image" ),
        Stage(name: "Kalos Pokémon League", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Two platforms on far sides, high ceiling and further side blastzones, wall clings", loves: "Bowser, Young Link, Wii Fit Trainer", hates: "Mewtwo, Pirahna Plant"), imageName: "kalos_stage_image" ),
        Stage(name: "Yoshi's Story", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Tri plat, slanted slopes, wall clings", loves: "ZSS, Cloud, Young Link, Pikachu", hates: "Belmonts, Robin"), imageName: "ys_stage_image" ),
        Stage(name: "Yoshi's Island", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Center platform, slanted slopes, wall clings, low ceiling, close side blastzones", loves: "Lucina, Yoshi, Roy, ZSS", hates: "Luigi, Belmonts"), imageName: "yi_stage_image" ),
        Stage(name: "Lylat Cruise", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Three platforms in a line, low ceiling, slanted slopes", loves: "Pit, Donkey Kong, Mr. Game and Watch", hates: "Belmonts, Robin, Wolf, Ganon"), imageName: "ly_stage_image" ),
        Stage(name: "Unova Pokémon League", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Two platforms, careful with teleport recoveries on right side", loves: "Falco, Kirby", hates: "Palutena, Mewtwo, Zelda"), imageName: "unova_stage_image" ),
        Stage(name: "WarioWare, Inc.", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "Two platforms, very close side blastzones", loves: "Little Mac, Roy, Steve", hates: "Mewtwo, Olimar"), imageName: "ww_stage_image" ),
        Stage(name: "Castle Siege", stageInfo: StageInfo(sizeClass: .Large, category: .CounterPicks, description: "One platform, slanted slopes", loves: "Rob, Pokemon Trainer", hates: "Peach, Ken"), imageName: "cs_stage_image" )
    ])
    
    var body: some Scene {
        WindowGroup {
            StageGGTabs(viewModel: viewModel)
        }
    }
}


