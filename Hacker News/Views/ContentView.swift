//
//  ContentView.swift
//  Hacker News
//
//  Created by Aditya Ambekar on 26/07/20.
//  Copyright © 2020 Aditya Ambekar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        
                        VStack {
                            Image(systemName: "arrowtriangle.up.fill")
                            Text(String(post.points))
                        }
                        Text(post.title)
                    }
                    
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


