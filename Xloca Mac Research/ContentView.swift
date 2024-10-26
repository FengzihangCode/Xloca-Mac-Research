//
//  ContentView.swift
//  Xloca Mac Research
//
//  Created by feng on 10/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var articles: [Article] = []
    @State private var searchText: String = ""
    @State private var selectedLanguage: String = "All"
    let languages = ["All", "English", "中文", "Français"]

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)

                Picker(NSLocalizedString("Article.Filter.Label", comment: ""), selection: $selectedLanguage) {
                    ForEach(languages, id: \.self) { language in
                        Text(language).tag(language)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                List {
                    ForEach(filteredArticles) { article in
                        NavigationLink(destination: ArticleDetailView(article: article)) {
                            VStack(alignment: .leading) {
                                Text(article.title)
                                    .font(.headline)
                                Text(article.summary)
                                    .font(.subheadline)
                            }
                        }
                    }
                    .onDelete(perform: deleteArticle)
                }
                .listStyle(DefaultListStyle())

                if filteredArticles.isEmpty {
                    Text(NSLocalizedString("Article.NoResults", comment: ""))
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle(NSLocalizedString("Article.List.Title", comment: ""))
            .onAppear {
                articles = Article.sampleData()
            }
        }
    }

    private var filteredArticles: [Article] {
        articles.filter { article in
            (selectedLanguage == "All" || article.language == selectedLanguage) &&
            (searchText.isEmpty || article.title.contains(searchText))
        }
    }

    private func deleteArticle(at offsets: IndexSet) {
        articles.remove(atOffsets: offsets)
    }
}
