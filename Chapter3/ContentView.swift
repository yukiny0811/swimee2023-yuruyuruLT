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
        NavigationStack {
            List {
                ForEach(items) { item in
                    Text(item)
                }
                .onDelete { indexSet in
                    items.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("フルーツ")
            .toolbar {
                ToolbarItem {
                    Button("追加") {
                        items.append("もも")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
