//
//  ContentView.swift
//  Shared
//
//  Created by ypatoglu on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
<<<<<<< HEAD
                .font(.title)
            Image("Surf Board")
                .resizable()
                .scaledToFit()
            Text("Order Pizza")
                .font(.largeTitle)
            Spacer()
            HStack {
                Image("1_100w")
                Text("Huli Chicken Pizza")
            }
            Text("Your Order")
            HStack{
                Text("Your order item here")
                Spacer()
            }
        }
        .padding()
=======
            Text("Order Pizza")
        }
>>>>>>> refs/remotes/origin/main
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
<<<<<<< HEAD
        Group{
            ContentView()
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
        }
        
           
=======
        ContentView()
>>>>>>> refs/remotes/origin/main
    }
}
