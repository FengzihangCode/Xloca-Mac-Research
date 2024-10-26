//
//  ArticleDetailView.swift
//  Xloca Mac Research
//
//  Created by feng on 10/26/24.
//

import Foundation
import SwiftUI

struct ArticleDetailView: View {
    var article: Article
    @State private var comments: [Comment] = []
    @State private var newComment: String = ""

    var body: some View {
        ScrollView {
            Text(article.content)
                .padding()

            TextField("Article.Comment.Add", text: $newComment)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Article.Comment.Submit") {
                let comment = Comment(content: newComment, language: article.language)
                comments.append(comment)
                newComment = ""
            }
            .padding()

            VStack(alignment: .leading) {
                ForEach(comments) { comment in
                    Text(comment.content)
                        .padding(5)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5)
                }
            }
            .padding(.top)
        }
        .navigationTitle(article.title)
    }
}
