//
//  ItemsModel.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/16/22.
//

import Foundation


enum Category: String, CaseIterable, Identifiable {
    //will uniquely identify each case of the enum
    var id: String {self.rawValue}
    case shoes = "Shoes"
    case clothes = "Clothes"
    case books = "Books"
    case videogames = "Videogames"
    case music = "Music"
    case tradingcards = "Trading Cards"
    case phones = "Phones"
    case laptops = "TV's"
}

struct Items: Identifiable {
    //constructs a randoms string identifier to make each item unique
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let pickupInstruct: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Items {
    static let all: [Items] = [
        Items(
            name: "IPhone 13",
            image: "https://external-preview.redd.it/FTx6BIg2N6neR5gFONTs6nTg_ub-CyqnUUcnqX59S80.jpg?auto=webp&s=26eca411cd419e09a781edf99c826f3eb0c0f81b",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Phones",
            datePublished: "2019-11-11",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Air Max 97's",
            image: "https://preview.redd.it/pl3kiiy1ose71.jpg?width=640&crop=smart&auto=webp&s=6ce36c56bf1896e4b8079182d0c5b4709549005c",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Shoes",
            datePublished: "2012-12-14",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Samsung 4 Series HDTV",
            image: "https://media.karousell.com/media/photos/products/2021/9/28/samsung_32_smart_tv_1632827217_736c7448.jpg",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "TV's",
            datePublished: "2020-11-08",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Supreme Box Logo Shirt",
            image: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2017%2F05%2Fsopranos-supreme-box-logo-tee-grailed-2.jpg?q=75&w=800&cbr=1&fit=max",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Clothes",
            datePublished: "2018-07-05",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Crash Bandicoot 4 Used",
            image: "https://i.ebayimg.com/images/g/o6cAAOSwPtliqDh2/s-l500.jpg",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Videogames",
            datePublished: "2018-04-12",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Diary of a Wimpy Kid Full Set",
            image: "https://images-na.ssl-images-amazon.com/images/I/61LUTyB+B1L.jpg",
            description: "This IPhone 13 is brand new fresh out of the box. It hasn't been used and has just been opened from the box. The box is still available and in good condition. The phone itself features a ceramic shield front, Super Retina XDR display with True Tone and an A15 Bionic chip.",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Books",
            datePublished: "2000-10-08",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
        Items(
            name: "Bulk Pokemon Cards",
            image: "https://u-mercari-images.mercdn.net/photos/m83813156712_1.jpg?width=1024&height=1024&format=pjpg&auto=webp&fit=crop&_=1656099190",
            description: "This purchase is for a bulk lot of 1000 cards. No energys. Cards are commons and uncommons. They are all in mint condition and come with boxes for you to store them in. Cards were bought 2 years ago with minimum use",
            pickupInstruct: "Contact me at ResaleMarketS@gmail.com to set up a pick up location or give me an address to ship the item to. Will take 2-3  business days to arrive if you choose the shipping option",
            category: "Trading Cards",
            datePublished: "2022-11-10",
            url: "https://offerup.com/item/detail/44ab9e00-1e10-33bf-9728-7e55072a5e7e?q=iphone+13+new"
        ),
    ]
}
