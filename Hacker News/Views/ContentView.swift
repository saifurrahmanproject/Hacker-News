//
//  ContentView.swift
//  Hacker News
//
//  Created by Tonoy Rahman on 2020-10-28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)){
                    
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        
        .onAppear(perform: {
            self.networkManager.fetchData()     // if problem
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
































