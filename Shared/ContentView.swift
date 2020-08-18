//
//  ContentView.swift
//  ForEachDemo
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 10
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn how to save screen space with outline views. 
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    var menu = MenuModel.menu
    var body: some View {

        VStack {
            Image("surfGirl1_250w")
                .resizable()
                .aspectRatio(contentMode: .fit)
//MARK: List
            List(menu, children:\.children){ item in
                MenuRowView(item: item)
            }

            ScrollView{
                OutlineGroup( menu, children:\.children){ item in
                        MenuRowView(item: item)
                    }
            }
            Spacer()
        }.edgesIgnoringSafeArea([.top,.bottom])
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
