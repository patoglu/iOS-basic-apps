//
//  AddView.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Make your life organized here...",
                          text: $textFieldText)
                    .padding()
                    .frame(width: .infinity, height: 55, alignment: .center)
                    .background(Color(red: 238/255, green: 238/255, blue: 228/255))
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)
                    //.shadow(color: .red, radius: 4, x: 0, y: 0)
                
                Button(action: {
                    
                    }, label: {
                        Text("Save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                )
            }
            .padding(14)
        }
        .navigationTitle("Add an Item ✍🏼")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        
    }
}
