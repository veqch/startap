//
//  ContentView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Wellcome")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack (spacing: 16){
                        NavigationLink(destination: PreviewView()) {
                            Text("Перейти в сервис")
                                .font(.custom("Inter_18pt-SemiBold", size: 16))
                                .foregroundColor(Color("BlueDiva"))
                                .frame(width: 300, height: 40)
                                .background(Color("WhiteSuper"))
                                .cornerRadius(20)
                        }
                }
                    .padding(.bottom, 50) 
                    
                }
            }
        }
        
        
    }

}

#Preview {
    ContentView()
}
