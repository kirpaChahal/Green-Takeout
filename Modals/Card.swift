//
//  Card.swift


import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "maxresdefault1", title: "Chipotle", descrip: "Steak Bowl",stars: 5, expand: false),
    Card(id: 1, image: "maxresdefault2", title: "KBBQ", descrip: "Bibimbap",stars: 3, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "Salad Bowl", descrip: "Best Seller",stars: 4, expand: false),
    Card(id: 3, image: "maxresdefault1", title: "Crispy Chicken Sandwich", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 4, image: "maxresdefault2", title: "Shrimp Fries", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "Pizza pineapple", descrip: "dont buy it",stars: 1, expand: false),
]

var SocialCard = [
    Card(id: 0, image: "igPic2", title: "Capgemini", descrip: "Cap Cookies!",stars: 0, expand: false),
    Card(id: 1, image: "igPic1", title: "Chop House", descrip: "Hungry to RISE",stars: 0, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "IG Picture3", descrip: "CAPGEMINI",stars: 0, expand: false),
    Card(id: 3, image: "maxresdefault1", title: "IG Picture4", descrip: "yes sir",stars: 0, expand: false),
    Card(id: 4, image: "maxresdefault2", title: "IG Picture5", descrip: "Sauceyy",stars: 0, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "IG Picture6", descrip: "yee yee",stars: 0, expand: false),
]

var FoodTypes = ["Pharmacy","Drinks","Greens","Comfort Food","Vegan","Gluten Free"]
