//
//  LogInV.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct LogInV: View {
    @State private var username = ""
    @State private var password = ""
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
//    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 61) {
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
                            TextField("Имя", text: $name)
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
                            TextField("Фамилия", text: $surname)
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
                            TextField("E-mail", text: $email)
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
                            TextField("Юзернейм", text: $username)
                                .font(.custom("Inter-18pt-Regular", size: 16))
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
                                .font(.custom("Inter-18pt-Regular", size: 16))
                                .padding()
                                .frame(width: 297, height: 45)
                                .foregroundColor(.gray)
                                .cornerRadius(56)
                        }
                    }
                    
                }
                VStack (spacing: 16){
                    NavigationLink(destination: ForumView()) {
                        Text("Регистрация")
                            .font(.custom("Inter-18pt-Regular", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 168, height: 40)
                            .background(Color("BlueDiva"))
                            .cornerRadius(20)
                    }
                    HStack (spacing: 8){
                        Text("Уже есть аккаунт?")
                            .font(.custom("Inter-18pt-Regular", size: 12))
                            .foregroundColor(.black)
                        NavigationLink(destination: RegisterV()) {
                            Text("Войти тут")
                                .font(.custom("Inter-18pt-SemiBold.ttf", size: 12))
                                .foregroundColor(.blueDiva)
                                .underline()
//                                .sheet(isPresented: $showLogin) {
//                                    RegisterV()
//                                }
                            
                        }
                    }
                    
                }
                
            }
            .padding(16)
            .navigationTitle("")
            .navigationBarHidden(true)
//            .sheet(isPresented: $showLogin) {
//                RegisterV()
//            }
            
        }
        
    }
}
#Preview {
    LogInV()
}
