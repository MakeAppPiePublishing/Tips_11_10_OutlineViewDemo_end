//
//  MenuRowView.swift
//  ForEachDemo
//
//  Created by Steven Lipton on 7/1/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct MenuRowView:View{
    let item:MenuItem
    var body: some View{
        HStack {
            Image("\(item.id)_100w")
                .cornerRadius(5.0)
                .shadow(radius: 5)
                .padding(.leading, 4)
            VStack(alignment:.leading){
                Text(item.name)
                    .font(item.type == .title ? .title : .body)
                Text(item.description)
                    .font(.caption)
            }
            .padding(.bottom)
            Spacer()
        }
        
        
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item:testMenuItem)
    }
}
