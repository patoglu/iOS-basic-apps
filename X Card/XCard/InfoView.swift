//
//  InfoView.swift
//  XCard
//
//  Created by Yusuf Patoglu on 26.09.2021.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            }).padding()
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"Test", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
