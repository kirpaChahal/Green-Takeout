
import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "discover", title: "Welcome to Green Takeout", descrip: "We make it simple to find the food you crave. Enter your home address and let us do the rest."),
    Page(id: 1, image: "choose", title: "Our latest aquisition is InstantRx", descrip: "You can now use us to order your percriptions."),
    Page(id: 2, image: "pick", title: "We're Planting Trees!", descrip: "For every 10 orders we will plant a tree.")
]
