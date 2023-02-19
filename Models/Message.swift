//
//  Message.swift
//  Chat App
//
//  Created by Dinith Hasaranga on 2023-02-18.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var recieved: Bool
    var timestamp  : Date
}
