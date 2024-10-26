//
//  SearchBar.swift
//  Xloca Mac Research
//
//  Created by feng on 10/26/24.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        TextField(NSLocalizedString("Article.Search.Placeholder", comment: ""), text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}
