//
//  ListRowView.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "item1 is here.", isCompleted: true)
    static var item2 = ItemModel(title: "item2 is here!", isCompleted: false)
    
    static var previews: some View {
        
        Group {
            ListRowView(item: item1)
                .previewLayout(.sizeThatFits)
            ListRowView(item: item2)
                .previewLayout(.sizeThatFits)
        }
        
    }
}
