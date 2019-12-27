//
//  ContentView.swift
//  HarryPotterCurrencyConverter
//
//  Created by Alexia Bernardo on 12/26/19.
//  Copyright © 2019 Alexia Bernardo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var galleonAmount = ""
    @State private var sickleAmount = ""
    @State private var knutAmount = ""
    
    var totalDollars: Double {
        let galleonCount = (Double(galleonAmount) ?? 0) * 25.00
        let sickleCount = (Double(sickleAmount) ?? 0) * 1.50
        let knutCount = (Double(knutAmount) ?? 0) * 0.05
        
        let usDollars = galleonCount + sickleCount + knutCount
        
        return usDollars
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter wizard currency amount")){
                    TextField("Galleons", text: $galleonAmount)
                        .keyboardType(.decimalPad)
                    
                    TextField("Sickles", text: $sickleAmount)
                        .keyboardType(.decimalPad)
                    
                    TextField("Knuts", text: $knutAmount)
                        .keyboardType(.decimalPad)
                }
                Section(header:Text("Total U.S. Dollars")){
                    Text("$\(totalDollars, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("HP Currency Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

