//
//  ContentView.swift
//  settingsApp
//
//  Created by Sysprobs on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject	var mod = model
    var body: some View {
        NavigationView{
            List {
                profile()
                ForEach(mod.sections){ section in
                    Section{
                        ForEach(section.items){item in
                            NavigationLink(destination: EmptyView()) {
                                HStack {
                                    Image(systemName: item.img)
                                    Text(item.text)
                                }
                            }                    }
                    }
                }
            }
        }.navigationTitle("Nastroiki")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
