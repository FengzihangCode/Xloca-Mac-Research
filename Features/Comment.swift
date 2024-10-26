//
//  Comment.swift
//  Xloca Mac Research
//
//  Created by feng on 10/26/24.
//

import Foundation

struct Comment: Identifiable {
    let id: UUID
    var content: String
    var language: String

    init(content: String, language: String) {
        self.id = UUID()
        self.content = content
        self.language = language
    }
}
