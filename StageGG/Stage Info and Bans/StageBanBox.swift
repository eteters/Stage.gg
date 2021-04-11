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
                // Views cannot receive taps at 0 opacity
                // So, 0.01 is a hack to remain clickable
                // There is probably a better way to do this.
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
            // The order of swiftUI chained calls means that the border won't change opacity even though it's part of this View.
            // Neat!
            .border(Color.outlineBorderColor, width: 4)
    }
    
}

struct StageBanBox_Previews: PreviewProvider {
    static var previews: some View {
        StageBanBox(isBanned: true)
    }
}
