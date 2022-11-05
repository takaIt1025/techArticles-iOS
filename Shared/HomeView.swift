//
//  ContentView.swift
//  Shared
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var presenter = HomeViewPresenter()
    var body: some View {
        NavigationView {
            List {
                VStack{
                    Text("技術書のランキングはここに表示したい")
                }
                Section(header: Text("トレンド")) {
                    ForEach(presenter.articles) { article in
                        NavigationLink(destination: ArticleDetailView(article: article)){
                        Text(article.title)
                        }
                    }
                }

            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Qiita", displayMode: .inline)
            .toolbar {
                /// ナビゲーションバー左
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
            .refreshable {
                presenter.load()
            }
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
