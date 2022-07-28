//
//  ContentView.swift
//  CarrouselParallax
//
//  Created by Josafat Vicente Pérez on 28/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                    ForEach(subs) { item in
                        GeometryReader{ proxy in
                        ElementView(sub: item)
                                .padding(40)
                                .rotation3DEffect(.degrees(proxy.frame(in:.global).minX / -10 ), axis: (x: 0, y: 1, z: 0))
                            //Text("\(proxy.frame(in: .global).minX)")
                            
                    }
                   
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ElementView: View {
    
    var sub: Subscription = subs[0]
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .stroke( .red , style: StrokeStyle(lineWidth: 0))
                .background(LinearGradient(colors: [Color(hex: sub.colorP), Color(hex: sub.colorS)], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(25)
                .frame(width: 300, height: 200)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
                .overlay(
                    VStack{
                        Image(sub.logo)
                            .interpolation(.high)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                        Text(sub.name)
                            .foregroundColor(.white)
                            .font(.system(.title, design: .monospaced))
                            .bold()
                        HStack(alignment: .bottom){
                            Text(sub.price + "$")
                                .foregroundColor(.white)
                                .font(.system(.headline, design: .monospaced))
                            Text(sub.fecha)
                                .foregroundColor(.white)
                                .font(.system(.caption, design: .monospaced))
                                
                        }
                    }
            )
            Spacer()
        }.padding()
    }
}

