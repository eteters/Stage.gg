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
    
    var stages: [Stage]
    
    var body: some View {
        VStack {
            Text("Hello, Stage1!")
                .padding()
            Text("Hello, Stage2!")
                .padding()
        }
    }
}

struct StageView_Preview: PreviewProvider {
    static var previews: some View {
        StageView(stages: stages)
    }
}
