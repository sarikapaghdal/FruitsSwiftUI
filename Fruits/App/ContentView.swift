//
//  ContentView.swift
//  Fruits
//
//  Created by Sarika on 18.03.22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    var fruits : [Fruit] = fruitsData
 
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination: FruitsDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
