//
//  DetailView.swift
//  StageGG
//
//  Created by Grant Teters on 4/10/21.
//

import SwiftUI

struct DetailView: View {
    
    var stage: Stage

    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                Text(stage.name)
                    .font(.largeTitle)
                Image(stage.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                Spacer()
                    .frame(height: 150)
                Text(stage.stageInfo.description)
                Spacer()
                    .frame(height: 80)
                Text("Loves: " + stage.stageInfo.loves)
                Spacer()
                    .frame(height: 40)
                Text("Hates: " + stage.stageInfo.hates)
                Spacer()
            }
        }
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(stage: Stage.oneStage())
    }
}

