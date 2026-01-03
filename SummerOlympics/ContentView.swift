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
    
    private let logos: [String] = ["1924-Paris-France.jpg",
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
            Text("Olympic Logos")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            Image(getImageName(logoName: logos[logoNumber]))
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text("\(getCity(logoName: logos[logoNumber])), \(getCountry(logoName: logos[logoNumber]))")
                .font(.largeTitle)
                .fontWeight(.thin)
            Text("\(getYear(logoName: logos[logoNumber]))")
                .font(.largeTitle)
                .fontWeight(.thin)
            
            HStack {
                Button {
                    logoNumber -= 1
                } label: {
                    Image(systemName: "chevron.left.to.line")
                }
                .disabled(logoNumber <= 0)
                Spacer()
                Button {
                    logoNumber += 1
                } label: {
                    Image(systemName: "chevron.right.to.line")
                }
                .disabled(logoNumber >= logos.endIndex - 1)

            }
            .font(.largeTitle)
            .fontWeight(.black)
            .tint(.black)
        }
        .padding()
    }
    
    private func getImageName(logoName: String) -> String {
        // png, jpg, jpeg
        var newLogoName = logoName.replacingOccurrences(of: ".png", with: "")
        newLogoName = newLogoName.replacingOccurrences(of: ".jpg", with: "")
        newLogoName = newLogoName.replacingOccurrences(of: ".jpeg", with: "")
        return newLogoName
    }
    
    private func getYear(logoName: String) -> String {
        let componentArray = logoName.components(separatedBy: "-")
        return componentArray[0]
        
    }
    private func getCountry(logoName: String) -> String {
        let strippedName = getImageName(logoName: logoName)
        let componentArray = strippedName.components(separatedBy: "-")
        let countryName = componentArray[componentArray.count - 1]
        return countryName.lowercased() == "usa" ? countryName.uppercased() : countryName.capitalized
    }
    
    private func getCity(logoName: String) -> String {
        let componentArray = logoName.components(separatedBy: "-")
        if componentArray.count > 3 {
            return "\(componentArray[1].capitalized) \(componentArray[2].capitalized)"
        } else {
            return componentArray[1].capitalized
        }
    }
}

#Preview {
    ContentView()
}
