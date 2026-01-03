//
//  ContentView.swift
//  SummerOlympics
//
//  Created by app-kaihatsusha on 03/01/2026.
//  Copyright © 2026 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var logoNumber = 22
    
    var logos: [String] = ["1924-Paris-France.jpg",
                           "1932-los-angeles-usa.jpg",
                           "1936-berlin-germany.png",
                           "1948-london-england.jpg",
                           "1952-helsinki-finland.jpg",
                           "1956-melbourne-australia.jpg",
                           "1960-rome-italy.jpg",
                           "1964-tokyo-japan.jpg",
                           "1968-mexico-city-mexico.jpg",
                           "1972-munich-germany.png",
                           "1976-montreal-canada.jpg",
                           "1980-moscow-russia.jpg",
                           "1984-los-angeles-usa.jpg",
                           "1988-seoul-south-korea.jpg",
                           "1992-barcelona-spain.jpg",
                           "1996-atlanta-usa.jpg",
                           "2000-sydney-australia.jpg",
                           "2004-athens-greece.png",
                           "2008-beijing-china.jpg",
                           "2012-london-england.jpg",
                           "2016-rio-brazil.jpg",
                           "2020-tokyo-japan.jpeg",
                           "2024-paris-france.png",
                           "2028-los-angeles-usa.png",
                           "2032-brisbane-australia" ]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
