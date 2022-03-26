//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Sarika on 20.03.22.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) {items in
                FruitCardView(fruit: items)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
