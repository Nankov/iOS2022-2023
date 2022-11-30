//
//  profile.swift
//  settingsApp
//
//  Created by Sysprobs on 11/30/22.
//

import SwiftUI

struct profile: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person")
                    .resizable().frame(width:50, height: 50)
                VStack(alignment: .leading){
                    Text("Vlezte vuv vashiq iPhone").foregroundColor(.blue)
                    Text("Nastroite iCloud, App Store i drugi uslugi")
                    Divider()
                }.padding([.leading], 30)
            }.padding([.leading],30)
            NavigationLink(destination: EmptyView()){
                HStack{
                    Image(systemName: "house")
                    Text("VPN")
                    Spacer()
                    Text("Ne e svurzan")
                }.padding([.leading, .trailing], 20)
            }
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
