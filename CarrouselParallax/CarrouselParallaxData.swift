//
//  CarrouselParallaxData.swift
//  CarrouselParallax
//
//  Created by Josafat Vicente Pérez on 28/7/22.
//

import SwiftUI


struct Subscription: Identifiable{
    
    
    
    let id = UUID()
    var name: String
    var logo: String
    var price: String
    var fecha: String
    var colorP: String
    var colorS: String
    
}

var subs = [ Subscription(name: "github", logo: "github", price: "20.00", fecha: "01/01/2023", colorP: "#883997", colorS: "#ee98fb"),
             Subscription(name: "playstation", logo: "playstation", price: "120.00", fecha: "02/04/2023", colorP: "#387002", colorS: "#99d066"),
             Subscription(name: "apple", logo: "apple", price: "29.00", fecha: "30/06/2023", colorP: "#ac1900", colorS: "#ff833a"),
             Subscription(name: "hbo", logo: "github", price: "69.90", fecha: "15/08/2023", colorP: "#003c8f", colorS: "#5e92f3"),
             

]
