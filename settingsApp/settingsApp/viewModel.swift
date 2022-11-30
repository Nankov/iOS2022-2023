//
//  viewModel.swift
//  settingsApp
//
//  Created by Sysprobs on 11/30/22.
//

import Foundation

protocol SystemPreferencesItem: Identifiable {
    var img: String { get }
    var text: String { get }
    var id: String { get }
}

protocol SystemPreferenceSection: Identifiable {
    var items: [Item] { get }
    var id: String { get }}

struct Item: SystemPreferencesItem{
    var img : String
    var text: String
    var id: String
}

struct SSection :SystemPreferenceSection{
    var items : [Item]
    var id: String
}

class prefModel : ObservableObject{
    @Published var sections : [SSection]
    
    init(sections: [SSection]) {
        self.sections = sections
    }
}

var item = Item(img:"globe", text: "test", id:"1");
var section = SSection(items:[item,item,item], id:"1");
var model = prefModel(sections:[section,section,section]);
