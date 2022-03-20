//
//  StartButtonView.swift
//  Fruits
//
//  Created by Sarika on 19.03.22.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        Button {
            print("Exit the onboading")
        } label: {
            HStack(spacing : 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }//: BUTTON
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
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
