//
//  ContentView.swift
//  Chat App
//
//  Created by Dinith Hasaranga on 2023-02-17.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello","Machn how are u ?","I am building SwiftUI chat app in my free time , Then what u doing ur free time ?"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messageArray, id: \.self){
                          text in
                        MessageBubble(message: Message(id: "12345", text: text, recieved: false, timestamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(Color("AppGray"))
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color(.white))
            
            MessageField()
        }

        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
