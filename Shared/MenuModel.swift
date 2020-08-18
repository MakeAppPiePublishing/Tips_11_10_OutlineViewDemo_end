//
//  MenuModel.swift
//  Pizza
//
//  Created by Steven Lipton on 9/1/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 01
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn more about the power of forEach in SwiftUI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI


///The types of menu items
enum MenuItemType{
    case pizza,pasta,dessert,beverage,title
}





///A basic description of a menu item
///`name` the name of the food item
///`description` the decription of the food item
///`price` the base price for the menu item
///`rating` the rating for the menu item
struct MenuItem:Identifiable{
    var id:Int
    var name:String
    var description:String = ""
    var price:Double = 0.00
    var rating:Int = 0
    var type:MenuItemType
    var children:[MenuItem]? = nil
}

let testMenuItem =  MenuItem(id: 1, name: "Huli Chicken", description: "Our original Hawaiian street food pizza, with Huli Huli chicken, onions, ginger, crushed macadamia nuts, tomato sauce, and cheese on a classic crust.", price: 14.00, rating: 5,type:.pizza)


struct MenuModel{
   static var menu:[MenuItem] = [
    MenuItem(id: 100, name: "Pizza", type: .title,
             children:[
            MenuItem(id: 0,
                 name: "Margherita",
                 description: "The classic pizza of Buffalo. Mozzarella, tomatoes, and basil on a classic crust.",
                 price: 12.00,
                 rating: 5,
                 type:.pizza ),
            MenuItem(id: 1,
                 name: "Huli Chicken",
                 description: "Our original Hawaiian street food pizza, with huli huli chicken, onions, ginger, crushed macadamia nuts, tomato sauce and cheese on a classic crust.",
                 price: 14.00,
                 rating: 6,
                 type:.pizza),
            MenuItem(id: 2,
                 name: "Quattro Formaggi",
                 description: "A blend of Asiago, Parmesan, buffalo mozzarella, and Gorgonzola on a thin crust.",
                 price: 13.00,
                 rating: 5,
                 type:.pizza),
            MenuItem(id: 3,
                 name: "Longboard",
                 description: "A very long flatbread for vegetarians and vegans, made with olive oil, mushrooms, garlic, fresh ginger, and macadamias, sweetened with lilikoi.",
                 price: 15.00,
                 rating: 4,
                 type:.pizza),
            MenuItem(id: 4,
                 name: "The Big Island",
                 description: "A meaty calzone exploding like a volcano. Beef and pork combined with vegetables, pineapple, and a special \"lava sauce\" leaking out the top crater. Definitely share this one.",
                 price: 17.00,
                 rating: 6,
                 type:.pizza),
            MenuItem(id: 5,
                 name: "Pepperoni",
                 description: "The New York Classic version. A thin crust with pizza sauce, cheese, and pepperoni.",
                 price: 10.00,
                 rating: 5,
                 type:.pizza),
            MenuItem(id: 6,
                 name: "Chicago Deep Dish",
                 description: "The classic deep dish cheese pizza. 2\"Thick and filled with sauce and cheese. ",
                 price: 17.00,
                 rating: 6,
                 type:.pizza),
            MenuItem(id: 7,
                 name: "Meat Lovers",
                 description: "A deep dish for the carnivore. Sausage and pepperoni in the classic Chicago deep dish.",
                 price: 20.00,
                 rating: 4,
                 type:.pizza),
            MenuItem(id: 8,
                 name: "BBQ Chicken",
                 description: "Grilled chicken with barbecue sauce, red onions, and peppers.",
                 price: 14.00,
                 rating: 5,type:.pizza),
            MenuItem(id: 9,
                 name: "Hawaiian",
                 description: "It may be from the mainland, but we make it our own. Pineapple, SPAM, cheese, onions, and tomato sauce on a thin crust.",
                 price: 14.00,
                 rating: 5,
                 type:.pizza)
                ]),
    MenuItem(id: 200, name: "Dessert", type: .title,
             children:[
            MenuItem(id:21,
                name:"Chocolate Macadamia Tart",
                description:"Chocolate Cream with macadamias topped with wipped cream and locally sourced chocolate shavings",
                 price: 8.95,
                 rating:5,
                 type:.dessert),
            MenuItem(id:22,
                name :"Strawberry Cheesecake",
                description:"A classic cheesecake with Strawberries",
                price: 7.95,
                rating:5,
                type:.dessert),
            MenuItem(id:23,
                name:"Tiramisu",
                description:"Mascarpone cheese between layers of 100% Kona espresso ladyfingers, topped with locally sourced chocolate",
                price: 8.95,
                rating:5,
                type:.dessert),
            MenuItem(id:24,
                     name:"Deep Dish Cookie",
                     description:"Deep dish cookie baked in our pizza oven to order then topped with your choice of ice cream",
                     price: 7.95,
                     rating:5,
                     type:.dessert),
            MenuItem(id:25,
                name:"Deconstructed Mochi Sundae",
                description:"Hot fudge and vanilla ice cream over a squre of butter mochi",
                price: 8.95,
                rating:5,
                type:.dessert),
            MenuItem(id:26,
                name:"Coconut Key Lime Pie",
                description:"Key lime pie with coconut on a macadamia nut crust with coconut flakes",
                price: 10.95,
                rating:5,
                type:.dessert),
            MenuItem(id:27,
                name:"Pecan Pie",
                description:"The classic Mainland pie with choice of ice cream",
                price: 9.95,
                rating:5,
                type:.dessert),
            MenuItem(id:28,
                name:"Cookie sandwich",
                description:"Your choice of ice cream between two of our chocolate chip cookies",
                price: 8.95,
                rating:5,
                type:.dessert)
                ])
    ]
}
