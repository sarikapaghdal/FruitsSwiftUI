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
                    
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitsNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
    }
}
