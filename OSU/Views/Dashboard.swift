//
//  Dashboard.swift
//  OSU
//
//  Created by Gregory Maldonado on 3/31/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import SwiftUI
import SafariServices

struct Dashboard: View {
    
    @State private var showExternalWindow = false
    @State private var externalWindow = ""
    
    var body: some View {
        VStack {
            if !showExternalWindow {
                Text("Dashboard")
                    .font(.system(size: 38, weight: .thin, design: .rounded))
                    .padding(.trailing, UIScreen.main.bounds.size.width / 2)
                    .padding(.bottom, -40)
                Profile()
                DashboardScrolls()
                Spacer()
            }
            else {
                if externalWindow == "Maps" {
                    Button(action: {
                        self.showExternalWindow = false
                    }) {
                        Image("DashboardButton").resizable()
                            .frame(width: 100, height: 50)
                    }
                    .padding(.trailing, UIScreen.main.bounds.width / 1.5)
                    MapView()
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
        .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
    }
}


struct SafariView: UIViewControllerRepresentable {

    let url: URL

     func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
