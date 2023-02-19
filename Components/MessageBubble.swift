//
//  MessageBubble.swift
//  Chat App
//
//  Created by Dinith Hasaranga on 2023-02-18.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing ){
            HStack {
                Text(message.text)
                    .foregroundColor(message.recieved ?
                                     Color(.black) : Color(.white))
                    .padding()
                    .background(message.recieved ?
                                Color(.white) : Color("AppBlue"))
                    .cornerRadius(30)
                                
                                
                
                
            }
            .frame(maxWidth: 300, alignment: message.recieved ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.recieved ? .leading : .trailing, 15 )
            }
            
        }
        .frame(maxWidth: .infinity, alignment: message.recieved ? .leading : .trailing)
        .padding(message.recieved ? .leading : .trailing )
        .padding(.horizontal, 10)
        
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1234", text: "Hello Im Dinith , How are u ?", recieved: false, timestamp: Date()))
    }
}
