//
//  StartButtonView.swift
//  Fruits
//
//  Created by Sarika on 19.03.22.
//

import SwiftUI
import PaddingManager

struct StartButtonView: View {
    
    //MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK: BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing : 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }//: BUTTON
        .padding(vertical: 10, horizontal: 16)
        .accentColor(.white)
        .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
    }
}

//MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
