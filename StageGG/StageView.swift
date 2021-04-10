//
//  StageView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageView: View {
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
        StageView()
    }
}
