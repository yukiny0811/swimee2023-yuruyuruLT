//
//  ViewController.swift
//  Chapter1
//
//  Created by Yuki Kuwashima on 2023/11/27.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func presentSwiftUIView() {
        let vc = UIHostingController(rootView: MySwiftUIView())
        self.present(vc, animated: true)
    }

}

