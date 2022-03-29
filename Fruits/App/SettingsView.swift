//
//  SettingsView.swift
//  Fruits
//
//  Created by Sarika on 29.03.22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //MARK: SECTION1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                          ) {
                              Divider().padding(.vertical, 4)
                              HStack(alignment: .center, spacing: 10) {
                                  Image("logo")
                                      .resizable()
                                      .scaledToFit()
                                      .frame(width: 80, height: 80)
                                      .cornerRadius(9)
                                  
                                  Text("Most of the fruits are naturally low in fat, sodium and calories.None have cholesterol. Fruits are source of many nutrients, including potassium, fibers, vitamins, and much more.")
                                      .font(.footnote)
                              }
                            }
                    //MARK: SECTION2
                    
                    
                    //MARK: SECTION3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                          ) {
                              SettingsRowView(name: "Developer", content: "John / Jane")
                              
                              SettingsRowView(name: "Designer", content: "Robert Petras")
                              SettingsRowView(name: "Compatibilityy", content: "ios 14")
                              SettingsRowView(name: "Website", linkLabel: "SWiftUI masterclass", linkDestination: "swiftuimasterclass.com")
                              SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                              SettingsRowView(name: "SwiftUI", content: "2.0")
                              SettingsRowView(name: "Version", content: "1.1.0")
                            }//: BOX
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
