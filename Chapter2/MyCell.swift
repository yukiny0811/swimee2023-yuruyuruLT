//
//  MyCell.swift
//  Chapter2
//
//  Created by Yuki Kuwashima on 2023/11/27.
//

import SwiftUI

struct MyCell: View {
    
    var title: String
    var memo: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
            Text(memo)
                .font(.subheadline)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MyCell(
        title: "タイトル",
        memo: "ここにはメモが表示されます"
    )
}
