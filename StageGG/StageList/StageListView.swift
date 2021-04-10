//
//  RulesView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageListView: View {
    
    @State var stages: [Stage]
    
    var body: some View {
        List {
            Text(stages[0].name)
            Text(stages[1].name)
            
        }
        
        
    }
    
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        StageListView(stages: stages)
    }
}


