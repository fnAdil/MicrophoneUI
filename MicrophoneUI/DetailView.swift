//
//  DetailView.swift
//  microphone
//
//  Created by Adil Özdemir on 12.08.2022.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color("primary").ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image("back").resizable().frame(width: 40, height: 30)
                    }

                       
                   
                    
                    Spacer()
                }.ignoresSafeArea()
                .padding(.leading,20)
            .padding(.vertical,5)
                
                
                Image("mic_1").resizable().frame(width: 120, height: 320)
                
                
                HStack(spacing:10){
                
                    ForEach(0 ..< 7) { item in 
                        RoundedRectangle(cornerRadius: 50).frame(width: 8, height: 8).foregroundColor(item == 2 ?Color("cyan"):Color("secondary"))
                    }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30).foregroundColor(Color("secondary"))
                    VStack(alignment: .leading){
                        Text("DPA 4018V-B-B01").foregroundColor(.white).font(.title).fontWeight(.bold)
                        
                        Text("Vocal Microphone").foregroundColor(.white).font(.title3).fontWeight(.thin)
                        HStack ( spacing:2){

                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in

                                Image(systemName: "star").foregroundColor(Color("cyan"))

                            }
                            
                            
                            Text("37 ratings").foregroundColor(.white).padding(.leading,20)

                        }.padding(.top)
                        
                        Text("Natural sound, High level stability, Adaptable capsule to use with wireless, optional suitable thread adapter for Sennheiser.").foregroundColor(.white).font(.body).padding(.top,20).frame(width: 300, height: 120)

                    }
                }.ignoresSafeArea().offset( x:40,y:60)
                
            }
        }.navigationBarHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
