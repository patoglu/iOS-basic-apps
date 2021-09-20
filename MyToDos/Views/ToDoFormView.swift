//
//  ToDoFormView.swift
//  MyToDos
//
//  Created by Yusuf Patoglu on 18.09.2021.
//

import SwiftUI

struct ToDoFormView: View {
    @EnvironmentObject var dataStore: DataStore
    @ObservedObject var formVM: ToDoFormViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                VStack (alignment: .leading) {
                    TextField("ToDo", text: $formVM.name)
                    Toggle("Completed", isOn: $formVM.completed)
                }
            }
            .navigationTitle("ToDo")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: cancelButton, trailing: updateSaveButton)
        }
    }
    
    var cancelButton: some View {
        Button("Cancel")
        {
            presentationMode.wrappedValue.dismiss()
        }
    }
    var updateSaveButton: some View {
        Button(formVM.updating ? "Update": "Save",action: formVM.updating ? updateToDo: addToDo)
            .disabled(formVM.isDisabled)
    }
}

extension ToDoFormView {
    func updateToDo() {
        let toDo = ToDo(id: formVM.id!, name: formVM.name, completed: formVM.completed)
        dataStore.updateToDo(toDo)
        presentationMode.wrappedValue.dismiss()
    }
    func addToDo() {
        let toDo = ToDo(name: formVM.name)
        dataStore.addToDo(toDo)
        presentationMode.wrappedValue.dismiss()
    }
    
    
}

struct ToDoFormView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoFormView(formVM: ToDoFormViewModel())
            .environmentObject(DataStore())
    }
}
