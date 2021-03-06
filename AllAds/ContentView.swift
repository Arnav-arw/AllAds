//
//  ContentView.swift
//  AllAds
//
//  Created by Arnav Singhal on 29/05/22.
//


import SwiftUI

struct ContentView: View {
    
    @State var isBannerAdOn: Bool = false
    @State var isIntertitalAdOn: Bool = false
    
    var viewModel = AdsViewModel()
    
    var body: some View {
        VStack(alignment: .center) {
            
          Text("Google Admob")
                .fontWeight(.bold)
            
            VStack {
              Button {
                  isBannerAdOn.toggle()
              } label: {
                  Text("Click to toggle banner ad")
              }
              Button {
                  viewModel.showInterstitial.toggle()
              } label: {
                  Text("Click to toggle intertital ad")
              }
          }
            
          if isBannerAdOn {
              GADBannerViewController()
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

