//
//  ListView.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//
import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
            else {
                List {
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                listViewModel.updateItem(item: item)
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ListView()
            }.environmentObject(ListViewModel())
            
            NavigationView {
                ListView()
            }.environmentObject(ListViewModel())
            .preferredColorScheme(.dark)
        }
       
        
    }
}

