//
//  SignInView.swift
//  instaaaa
//
//  Created by Admin on 09.02.2021.
//

import SwiftUI

struct SignInView: View {
    
    @State var login = ""
    @State var password = ""
    
    
    
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack(spacing:10){
                Spacer()
                Image("textLogo").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:UIScreen.main.bounds.width/2)
                    .padding()
                CustomTextField(placeholder: Text ("Phone Number"), text: $login)
                CustomTextField(placeholder: Text ("Password"), text: $password)
                HStack{
                    Spacer()
                    Button(action:{}, label:{
                        Text("forgot pw?").fontWeight(.semibold)
                    })
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Enter")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width/1.1, height: 50, alignment: .center)
                        .cornerRadius(5)
                        .background(Color.blue)
                })
                ZStack{
                    Rectangle()
                        .frame(height:1)
                        .border(Color.gray.opacity(0.4), width: 100)
                    Text("or")
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color.black)
                }
                HStack(spacing:10){
                    Image("fblogo").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 20, alignment: .center)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("ENTER WITH FB")
                            .fontWeight(.semibold)
                    })
                }.padding()
                HStack(spacing:10){
                    Text("NO account?")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    NavigationLink(
                        destination: Text("Register"),
                        label: {
                            Text("Reg")
                                .foregroundColor(.blue)
                                .fontWeight(.semibold)
                                .font(.system(size: 12))
                        })
                }
            }.frame(width: UIScreen.main.bounds.width/1.1)
            .padding(.bottom, 20)
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .previewDevice("iPhone 12 Pro")
    }
}
struct CustomTextField:View {
    var placeholder: Text
    @Binding var text: String
    
    var body: some View{
        ZStack(alignment: .leading, content:{
            if text.isEmpty{
                placeholder
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .padding(.leading, 5)
            }
            TextField("", text: $text).padding(5)
        }).frame(height:50)
        .background(Color.white.opacity(0.1))
        .cornerRadius(5)
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(UIColor.lightGray).opacity(0.3),lineWidth: 1))
    }
    
}
