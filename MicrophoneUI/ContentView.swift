//
//  ContentView.swift
//  microphone
//
//  Created by Adil Özdemir on 10.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("secondary").ignoresSafeArea()
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        HStack {
                            Text("Microphones").fontWeight(.bold).font(.largeTitle)
                            Spacer()
                            
                            NavigationLink {
                                DetailView()
                            } label: {
                                Image("menu").frame(width: 60, height: 36)
                            }

                       
                        }.ignoresSafeArea()
                        .padding(.leading,40)
                            .padding(.vertical,5)
                        
                        Text("Large Diapghragm Microphones").fontWeight(.regular).font(.title3).padding(.leading,40).padding(.top,40)
                            
                        
               
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing:20) {
                                    ForEach(0 ..< 15) { item in
                                        
                                        NavigationLink {
                                            DetailView()
                                        } label: {
                                            ZStack(alignment: .bottom) {

                                                RoundedRectangle(cornerRadius: 30).frame(width: 200, height: 240).foregroundColor(Color("primary"))

                                                VStack {

                                                    Image("mic_1").resizable().frame(width: 90, height: 180)

                                                    Text("Neumann TLM 103 Studio Bundle").padding(.horizontal)
                                                                        

                                                    HStack ( spacing:2){

                                                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in

                                                            Image(systemName: "star").foregroundColor(Color("cyan"))

                                                        }

                                                    }.padding(.top)
                                                        .padding(.bottom)

                                                }.frame(width: 200, height: 280,alignment: .top)
                                                                   
                                                
                                            }.frame(width: 200, height: 280,alignment: .top)
                                        }
                                        
                                     
                                      
                                    }
                            }.padding(.leading,30)
                        }.padding(.top)
                        
                        Text("Vocal Microhones").fontWeight(.regular).font(.title3).padding(.leading,40)
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing:20) {
                                    ForEach(0 ..< 15) { item in
                                        ZStack {

                                            RoundedRectangle(cornerRadius: 30).frame(width: 180, height: 220).foregroundColor(Color("primary"))

                                            VStack {

                                                Image("mic_2")

                                                Text("Neumann TLM 103 Studio Bundle")
                                                                    

                                                HStack ( spacing:2){

                                                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in

                                                        Image(systemName: "star").foregroundColor(Color("cyan"))

                                                    }

                                                }.padding(.top)

                                            }.frame(width: 180, height: 260,alignment: .top)
                                                               
                                            
                                        }.frame(width: 180, height: 260,alignment: .top)
                                    }
                            }.padding(.leading,30)
                        }.padding(.top)
                        
                    }
                }
            }.navigationBarHidden(true)}.ignoresSafeArea()
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(ColorScheme.dark)
    }
}
