//
//  Article.swift
//  Xloca Mac Research
//
//  Created by feng on 10/26/24.
//

import Foundation

struct Article: Identifiable {
    let id: UUID
    var title: String
    var summary: String
    var content: String
    var language: String

    init(title: String, summary: String, content: String, language: String) {
        self.id = UUID()
        self.title = title
        self.summary = summary
        self.content = content
        self.language = language
    }
}

extension Article {
    static func sampleData() -> [Article] {
        return [
            Article(title: "Exploring Xloca", summary: "An introduction to Xloca for localization.", content: "Xloca is a modern way to localize any Apple platform projects on Windows.", language: "English"),
            Article(title: "探索 Xloca", summary: "用于项目本地化的 Xloca 介绍。", content: "Xloca 是用于任何 Apple 平台项目在Windows操作系统上进行本地化的现代方式。", language: "中文"),
            Article(title: "Découverte de SwiftUI", summary: "Une introduction à SwiftUI pour le développement iOS.", content: "SwiftUI est une façon moderne de déclarer des interfaces utilisateur pour n'importe quelle plateforme Apple.", language: "Français"),
            Article(title: "Erforschung von SwiftUI", summary: "Eine Einführung in SwiftUI für die iOS-Entwicklung.", content: "SwiftUI ist eine moderne Möglichkeit, Benutzeroberflächen für jede Apple-Plattform zu deklarieren.", language: "Deutsch"),
        ]
    }
}
