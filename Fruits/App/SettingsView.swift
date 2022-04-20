//
//  SettingsView.swift
//  Fruits
//
//  Created by Sarika on 29.03.22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
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
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                          ) {
                              Divider().padding(.vertical, 4)
                              
                              Text("If you wish, you can restart the application by toggle the switch in this box. that way it starts the onboarding process and you will see the welcome screen again")
                                  .padding(.vertical, 8)
                                  .frame(minHeight: 60)
                                  .layoutPriority(1)
                                  .font(.footnote)
                                  .multilineTextAlignment(.leading)
                              
                              Toggle(isOn: $isOnboarding) {
                                  if isOnboarding {
                                      Text("Restarted".uppercased())
                                          .fontWeight(.bold)
                                          .foregroundColor(.green)
                                  } else {
                                      Text("Restart".uppercased())
                                          .fontWeight(.bold)
                                          .foregroundColor(.secondary)
                                  }
                              }
                              .padding()
                              .background(Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                          }
                    
                    //MARK: SECTION3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                          ) {
                              SettingsRowView(name: "Developer", content: "Sarika")
                              SettingsRowView(name: "Designer", content: "Sarika")
                              SettingsRowView(name: "Compatibility", content: "ios 15.2")
                              SettingsRowView(name: "SwiftUI", content: "3.0")
                              SettingsRowView(name: "Version", content: "1.1.0")
                            }//: BOX
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                  trailing:
                    Button(action: {
                      presentationMode.wrappedValue.dismiss()
                    }) {
                      Image(systemName: "xmark")
                    }
                )
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
