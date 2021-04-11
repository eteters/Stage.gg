//
//  StageModels.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO: Add all the StageInfo we want

class AppViewModel: ObservableObject {
    @Published var stages: [Stage]
    
    init(stages: [Stage]) {
        self.stages = stages
    }
}

struct Stage: Identifiable, Hashable {
    let id = UUID()

    var name: String
    
    var isEnabled: Bool
    var isBanned: Bool = false

    var stageInfo: StageInfo

    var imageName: String
    
    init(name:String, stageInfo: StageInfo, imageName: String, isEnabled: Bool = true, isBanned: Bool = false) {
        self.name = name
        self.stageInfo = stageInfo
        self.imageName = imageName
        self.isEnabled = isEnabled
    }
    
    // Hashable
    static func == (lhs: Stage, rhs: Stage) -> Bool {
        return lhs.id == rhs.id
    }
    
}

struct StageInfo: Hashable {
    var sizeClass: StageSizeClass
    
    var category: StageCategory
    
    var description: String
    
    var loves: String
    
    var hates: String
}

enum StageSizeClass {
    case Large
    case Medium
    case Small
}

enum StageCategory {
    case Starters
    case CounterPicks
    case Other
}

