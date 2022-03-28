//
//  FruitsDetailView.swift
//  Fruits
//
//  Created by Sarika on 28.03.22.
//

import SwiftUI

struct FruitsDetailView: View {
    var fruit : Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20){
                    VStack (alignment: .leading, spacing: 20){
                        Text(fruit.title)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
            }//: SCROLLVIEW
        }//: NAVIGATION
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
    }
}
