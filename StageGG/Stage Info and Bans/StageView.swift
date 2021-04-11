//
//  StageView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO make Vstack into a scrollable list of items that can be tapped
// StageView should take in a list or an object with a list on it 

struct StageView: View {
    static let title = "Stages"

    var stages: [Stage]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(stages, id: \.self) { stage in
                    StageRow(props: StageRow.Props(stage: stages[0]) )
                }
            }
        }.navigationTitle(StageView.title)
    }
}

struct StageView_Preview: PreviewProvider {
    static var previews: some View {
        StageView(stages: stages)
    }
}
