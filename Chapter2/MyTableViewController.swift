//
//  ViewController.swift
//  Chapter2
//
//  Created by Yuki Kuwashima on 2023/11/27.
//

import UIKit
import SwiftUI

class MyTableViewController: UITableViewController {
    
    var titles: [String] = [
        "りんご",
        "ぶどう",
        "パイナップル",
    ]
    
    var memos: [String] = [
        "甘い",
        "紫色",
        "とげとげ",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.contentConfiguration = UIHostingConfiguration {
            MyCell(title: titles[indexPath.row], memo: memos[indexPath.row])
        }
        
        return cell
    }


}

