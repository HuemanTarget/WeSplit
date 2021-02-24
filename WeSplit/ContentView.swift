//
//  ContentView.swift
//  WeSplit
//
//  Created by Joshua Basche on 2/22/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  @State private var checkAmount = ""
  @State private var numberOfPeople = 2
  @State private var tipPercentage = 0
  
  let tipPercentages = [10, 15, 20, 25, 0]
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", text: $checkAmount)
            .keyboardType(.decimalPad)
          
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2 ..< 100) {
              Text("\($0)")
            }
          }
        }
      }
      .navigationBarTitle("WeSplit")
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
