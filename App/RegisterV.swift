//
//  RegisterV.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct RegisterV: View {
    @State private var username = ""
    @State private var password = ""
//    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 116) {
                Image("logo")
                    .padding()
                Text("Бонжур, \nсалага!")
                    .font(.custom("stolzl-regular", size: 48))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("BlackSuper"))
                
                VStack (spacing: 10){
                    ZStack {
                        RoundedRectangle(cornerRadius: 56)
                            .fill(Color("NeavyBlue"))
                            .frame(width: 297, height: 45)
                        VStack(alignment: .leading) {
                            TextField("Юзернейм", text: $username)
                                .padding()
                                .frame(width: 297, height: 45)
                                .foregroundColor(.gray)
                                .cornerRadius(56)
                            
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 56)
                            .fill(Color("NeavyBlue"))
                            .frame(width: 297, height: 45)
                        VStack(alignment: .leading) {
                            SecureField("Пароль", text: $password)
                                .padding()
                                .frame(width: 297, height: 45)
                                .foregroundColor(.gray)
                                .cornerRadius(56)
                        }
                    }
                    
                }
                VStack (spacing: 16){
                    NavigationLink(destination: ForumView()) {
                        Text("Войти")
                            .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 112, height: 40)
                            .background(Color("BlueDiva"))
                            .cornerRadius(20)
                    }
                    HStack (spacing: 8){
                        Text("Еще нет аккаунта?")
                            .font(.custom("Inter-18pt-Regular.ttf", size: 12))
                            .foregroundColor(.black)
                        NavigationLink(destination: LogInV()) {
                            Text("Регистрация тут")
                                .font(.custom("Inter-18pt-Regular.ttf", size: 12))
                                .foregroundColor(.blueDiva)
                                .underline()
//                                .sheet(isPresented: $showLogin) {
//                                    LogInV()
//                                }
                        }
                    }
                    
                }
                
            }
            .padding(16)
            .navigationTitle("")
            .navigationBarHidden(true)
//            .sheet(isPresented: $showLogin) {
//                LogInV()
//            }
            
        }
    }
}
#Preview {
    RegisterV()
}
