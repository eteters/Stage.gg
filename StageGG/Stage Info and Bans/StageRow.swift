//
//  StageRow.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO make stagerow look correct

struct StageRow: View {
        
    var stage: Stage
            
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView(stage: stage)) {
                stage.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 112)
                    .clipped()
            }
            
            // note that the checkbox isn't passing up the ban state rn
            StageBanBox(isBanned: stage.isBanned)
                .padding()
            Spacer()
        }
    }
}

struct StageRow_Previews: PreviewProvider {
    static var previews: some View {
        StageRow(stage: Stage.oneStage())
    }
}
