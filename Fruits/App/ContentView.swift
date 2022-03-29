//
//  ContentView.swift
//  Fruits
//
//  Created by Sarika on 18.03.22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    @State private var isShowingSettings : Bool = false
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
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
