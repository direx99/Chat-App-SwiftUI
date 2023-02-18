//
//  MessageBubble.swift
//  Chat App
//
//  Created by Dinith Hasaranga on 2023-02-18.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing ){
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.recieved ?
                                Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
                                
                                
                
                
            }
            .frame(maxWidth: 300, alignment: message.recieved ? .leading : .trailing)
        }
        .frame(maxWidth: .infinity, alignment: message.recieved ? .leading : .trailing)
        .padding()
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1234", text: "Hello Im Dinith , How are u ?", recieved: false, Timestamp: Date()))
    }
}
