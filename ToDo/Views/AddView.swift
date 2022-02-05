//
//  AddView.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//

import SwiftUI
struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Make your life organized here...",
                          text: $textFieldText)
                    .padding()
                    .frame(width: .infinity, height: 55, alignment: .center)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    //.shadow(color: .black, radius: 2, x: 0, y: 0)
                    //.shadow(color: .red, radius: 4, x: 0, y: 0)
                
                Button(action: saveButtonPressed, label: {
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
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(theTitle: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        else {
            showAlert.toggle()
            print("HELLO MOTO",showAlert)
            alertTitle = "Your new todo item must be at least 3 characters long \n😡😡😡"
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldText.count < 3 ? false : true
    }
    
    func getAlert() -> Alert {
        return  Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
.previewInterfaceOrientation(.portrait)
        
    }
}
