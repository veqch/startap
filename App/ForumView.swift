//
//  ForumView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 27.10.2024.
//

import SwiftUI

struct ForumView: View {
  var body: some View {
    NavigationStack {
      ZStack {
        Color("GreyLight").ignoresSafeArea()
          ScrollView {
            // верхняя строка
          VStack {
            HStack(spacing: 200) {
              Text("Форум")
                .font(.custom("stolzl-regular", size: 32))
                .foregroundColor(.black)
                NavigationLink(destination: ProfileSetView()) {
                    Image("profileImg")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            .padding(16)
            // поисковой запрос
            ZStack {
              RoundedRectangle(cornerRadius: 20)
                .fill(Color("WhiteSuper"))
                .frame(width: 380, height: 66)
              HStack(spacing: 180) {
                Text("Что у вас нового?")
                  .font(.custom("Inter_18pt-Regular", size: 16))
                  .fontWeight(.bold)
                  .foregroundColor(Color("Velvet"))
                Image("uploadPhoto")
                      .resizable()
                      .frame(width: 28, height: 28)
              }
              .padding(16)
            }
            .padding(.bottom, 16)
              // шапка поста
              ZStack {
                  RoundedRectangle(cornerRadius: 36)
                      .fill(Color("WhiteSuper"))
                      .frame(width: 380, height: 370)
                  VStack(spacing: 16) {
                      HStack(spacing: 50){
                          HStack(spacing: 16) {
                              Image("startapLogo")
                                  .resizable()
                                  .frame(width: 60, height: 60)
                              VStack(alignment: .leading, spacing: 6) {
                                  Text("StarTap")
                                  Text("Маша Бубнова")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("Grey"))
                              }
                              
                        }
                          
                          ZStack{
                              RoundedRectangle(cornerRadius: 23)
                                  .fill(Color("NeavyBlue"))
                                  .frame(width: 125, height: 60)
                              HStack {
                                  Image("stars")
                                      .resizable()
                                      .frame(width: 16, height: 20)
                                  Text("22 364")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                      }
//                      .padding(.top, 0)
                      //текст поста
                      VStack(alignment: .leading, spacing: 16) {
                          Text("Мы запустили новый сервис!!!!!!!!")
                              .font(.custom("stolzl-regular", size: 20))
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                          Text("Никому не хочется вникать в скучные отчётности, когда бизнес уже налажен и дело идёт. Тем более, когда в своём банке бухгалтерия не отличается простотой. Специально для таких клиентов банк для предпринимателей и предприятий «Точка» вывел на рынок свой топовый внутренний продукт — онлайн.")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                      }
                      .padding(.vertical, 8)
                      // информация и call to action поста
                      HStack(spacing: 110){
                          HStack(spacing: 16){
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 81, height: 42)
                                  HStack(spacing: 10) {
                                      Image("MassageIcon")
                                      Text("24")
                                          .font(.custom("Inter_18pt-Medium", size: 16))
                                          .foregroundColor(Color("BlackSuper"))
                                  }
                              }
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 51, height: 42)
                                  Image("ShareIcon")
                              }
                          }
                          .padding(.horizontal, 10)
                          Text("3 ч назад")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("Grey"))
                              .padding(.horizontal, 16)
                      }
                  }
              }
              .padding(.bottom, 16)
              
              //второй пост
              ZStack {
                  RoundedRectangle(cornerRadius: 36)
                      .fill(Color("WhiteSuper"))
                      .frame(width: 380, height: 592)
                      
                  VStack(spacing: 16) {
                      VStack(spacing: 10) {
                          Image("PostIcon")
                              .resizable()
                              .frame(width: 364, height: 218)
                              .padding(.bottom, 10)
                      }
                        
                      HStack(spacing: 50){
                          HStack(spacing: 16) {
                              Image("startapLogo")
                                  .resizable()
                                  .frame(width: 60, height: 60)
                              VStack(alignment: .leading, spacing: 6) {
                                  Text("StarTap")
                                  Text("Маша Бубнова")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("Grey"))
                              }
                              
                        }
                          
                          ZStack{
                              RoundedRectangle(cornerRadius: 23)
                                  .fill(Color("NeavyBlue"))
                                  .frame(width: 125, height: 60)
                              HStack {
                                  Image("stars")
                                      .resizable()
                                      .frame(width: 16, height: 20)
                                  Text("22 364")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                      }
                      .padding(.top, -10)
                      //текст поста
                      VStack(alignment: .leading, spacing: 16) {
                          Text("Мы запустили новый сервис!!!!!!!!")
                              .font(.custom("stolzl-regular", size: 20))
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                          Text("Никому не хочется вникать в скучные отчётности, когда бизнес уже налажен и дело идёт. Тем более, когда в своём банке бухгалтерия не отличается простотой. Специально для таких клиентов банк для предпринимателей и предприятий «Точка» вывел на рынок свой топовый внутренний продукт — онлайн.")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                      }
                      .padding(.vertical, 8)
                      // информация и call to action поста
                      HStack(spacing: 110){
                          HStack(spacing: 16){
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 81, height: 42)
                                  HStack(spacing: 10) {
                                      Image("MassageIcon")
                                      Text("24")
                                          .font(.custom("Inter_18pt-Medium", size: 16))
                                          .foregroundColor(Color("BlackSuper"))
                                  }
                              }
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 51, height: 42)
                                  Image("ShareIcon")
                              }
                          }
                          .padding(.horizontal, 10)
                          Text("3 ч назад")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("Grey"))
                              .padding(.horizontal, 16)
                      }
                  }
              }
              .padding(.bottom, 16)
              //третий пост
              ZStack {
                  RoundedRectangle(cornerRadius: 36)
                      .fill(Color("WhiteSuper"))
                      .frame(width: 380, height: 370)
                  VStack(spacing: 16) {
                      HStack(spacing: 50){
                          HStack(spacing: 16) {
                              Image("startapLogo")
                                  .resizable()
                                  .frame(width: 60, height: 60)
                              VStack(alignment: .leading, spacing: 6) {
                                  Text("StarTap")
                                  Text("Маша Бубнова")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("Grey"))
                              }
                              
                        }
                          
                          ZStack{
                              RoundedRectangle(cornerRadius: 23)
                                  .fill(Color("NeavyBlue"))
                                  .frame(width: 125, height: 60)
                              HStack {
                                  Image("stars")
                                      .resizable()
                                      .frame(width: 16, height: 20)
                                  Text("22 364")
                                      .font(.custom("Inter_18pt-Regular", size: 16))
                                      .fontWeight(.bold)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                      }
//                      .padding(.top, 0)
                      //текст поста
                      VStack(alignment: .leading, spacing: 16) {
                          Text("Мы запустили новый сервис!!!!!!!!")
                              .font(.custom("stolzl-regular", size: 20))
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                          Text("Никому не хочется вникать в скучные отчётности, когда бизнес уже налажен и дело идёт. Тем более, когда в своём банке бухгалтерия не отличается простотой. Специально для таких клиентов банк для предпринимателей и предприятий «Точка» вывел на рынок свой топовый внутренний продукт — онлайн.")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("BlackSuper"))
                              .padding(.horizontal, 32)
                      }
                      .padding(.vertical, 8)
                      // информация и call to action поста
                      HStack(spacing: 110){
                          HStack(spacing: 16){
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 81, height: 42)
                                  HStack(spacing: 10) {
                                      Image("MassageIcon")
                                      Text("24")
                                          .font(.custom("Inter_18pt-Medium", size: 16))
                                          .foregroundColor(Color("BlackSuper"))
                                  }
                              }
                              ZStack{
                                  RoundedRectangle(cornerRadius: 20)
                                      .fill(Color("NeavyBlue"))
                                      .frame(width: 51, height: 42)
                                  Image("ShareIcon")
                              }
                          }
                          .padding(.horizontal, 10)
                          Text("3 ч назад")
                              .font(.custom("Inter_18pt-Regular", size: 16))
                              .fontWeight(.bold)
                              .foregroundColor(Color("Grey"))
                              .padding(.horizontal, 16)
                      }
                  }
              }
              .padding(.bottom, 16)
          }
        }
        .navigationTitle("")
        .navigationBarHidden(true)

      }
    }
  }
}
#Preview {
    ForumView()
}
