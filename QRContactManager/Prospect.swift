//
//  Prospect.swift
//  HotProspects
//
//  Created by Aditya Soni on 8/01/25.
//

import Foundation
import SwiftData

@Model
class Prospect {
    var name: String
    var emailAddress: String
    var isContacted: Bool
    var addDate: Date
    
    init(name: String, emailAddress: String, isContacted: Bool, addDate: Date) {
        self.name = name
        self.emailAddress = emailAddress
        self.isContacted = isContacted
        self.addDate = addDate
    }
}
