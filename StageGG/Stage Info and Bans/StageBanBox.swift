//
//  StageBanBox.swift
//  StageGG
//
//  Created by Evan Teters on 4/10/21.
//

import SwiftUI

struct StageBanBox: View {
    @State var isBanned: Bool
    
    private var opacity: Double {
        get {
            if isBanned {
                return 1.0
            } else {
                return 0.01
            }
        }
    }
    
    var body: some View {
        Image("x")
            .padding()
            .onTapGesture {
                isBanned = !isBanned
            }
            .opacity(opacity)
            .border(Color.black, width: 4)
    }
    
}

struct StageBanBox_Previews: PreviewProvider {
    static var previews: some View {
        StageBanBox(isBanned: true)
    }
}
