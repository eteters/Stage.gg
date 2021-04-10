//
//  StageModels.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO: Add all the StageInfo we want 

struct Stage {
    var id: Int
    var name: String

    var stageInfo: StageInfo

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(id:Int, name:String, stageInfo: StageInfo, imageName: String) {
        self.id = id
        self.name = name
        self.stageInfo = stageInfo
        self.imageName = imageName
    }
}

struct StageInfo {
    var sizeClass: StageSizeClass
}

enum StageSizeClass {
    case Large
    case Medium
    case Small
}

