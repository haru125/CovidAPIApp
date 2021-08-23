//
//  FirestoreData.swift
//  CovidAPIApp
//
//  Created by Satoshi Ota on 2021/08/21.
//

import Foundation
import MessageKit

struct FirestoreData {
    var date: Date?
    var senderId: String?
    var text: String?
    var userName: String?
    let colors = Colors()
    var userId = ""
    var firestoreData:[FirestoreData] = []
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
    
    private init(kind: MessageKind, sender: Sender, messageId: String, date: Date) {
        self.kind = kind
        self.sender = sender
        self.messageId = messageId
        self.sentDate = date
    }
    init(text: String, sender: Sender, messageId: String, date: Date) {
        self.init(kind: .text(text), sender: sender, messageId: messageId, date: date)
    }
    init(attributedText: NSAttributedString, sender: Sender, messageId: String, date: Date) {
        self.init(kind: .attributedText(attributedText), sender: sender, messageId: messageId, date: date)
    }
}
