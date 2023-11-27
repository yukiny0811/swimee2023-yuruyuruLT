//
//  ContentView.swift
//  Chapter3
//
//  Created by Yuki Kuwashima on 2023/11/27.
//

import SwiftUI

extension String: Identifiable {
    public var id: String { self }
}

struct ContentView: View {
    @State var items: [String] = [
        "りんご",
        "ぶどう",
        "パイナップル",
    ]
    var body: some View {
        EmptyView()
    }
}

#Preview {
    ContentView()
}
