//
//  DetailView.swift
//  Hacker News
//
//  Created by Aditya Ambekar on 26/07/20.
//  Copyright © 2020 Aditya Ambekar. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}

