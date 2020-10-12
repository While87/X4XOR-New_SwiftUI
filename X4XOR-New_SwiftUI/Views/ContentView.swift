//
//  ContentView.swift
//  X4XOR-New_SwiftUI
//
//  Created by Vladimir Gorbunov on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
               //Делаем каждый элемент в списке как навигацию на след экран(указываем какой View использовать и инициализируем свойство этом в классе)
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
