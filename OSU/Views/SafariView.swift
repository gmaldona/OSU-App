//
//  SafariView.swift
//  OSU
//
//  Created by Gregory Maldonado on 4/14/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation
import SafariServices
import SwiftUI

// View that contains safari
struct SafariView: UIViewControllerRepresentable {

    //Initializes the safari view with a url
    let url: URL
    //creates the safari view with the desired url
     func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
