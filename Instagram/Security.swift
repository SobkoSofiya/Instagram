//
//  Security.swift
//  Instagram
//
//  Created by Sofi on 15.01.2021.
//

import SwiftUI

struct Security: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("pr"), Color("le")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.height / 1.15, alignment: .center)
                
                .cornerRadius(40)
                .foregroundColor(.white)
            VStack(alignment:.leading, spacing: 0){
                topMenu()
               
                ScrollView{
                    HStack(spacing:15){
                    LeadingColonnn()
                    TralingColonn()
                }
                }.frame(width: 350, height: 530, alignment: .center)
                    
                }
            
            BottomMenu()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Security_Previews: PreviewProvider {
    static var previews: some View {
        Security()
    }
}




struct topMenu:View {
    var body: some View {
        VStack(alignment:.leading){
    HStack{
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 50, height: 50, alignment: .center)
                
               
                .border(Color.black)
                .cornerRadius(20)
                .opacity(0.4)
        Image(systemName: "text.justifyleft")
            
            .frame(width: 50, height: 50, alignment: .center)
            
           
        }
        .padding(.trailing,150)
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 50, height: 50, alignment: .center)
                
               
                .border(Color.black)
                .cornerRadius(20)
                .opacity(0.4)
        Image(systemName: "envelope.badge")
            
            .frame(width: 50, height: 50, alignment: .center)
            
           
        }

        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 50, height: 50, alignment: .center)
                
               
                .border(Color.black)
                .cornerRadius(20)
                .opacity(0.4)
        Image(systemName: "person")
            
            .frame(width: 50, height: 50, alignment: .center)
            
           
        }
    }
            Text("Security")
                .font(.custom("", size: 30)).padding(.top)
            Text("Select the rooms to be secured")
                .font(.custom("", size: 15))
                .foregroundColor(.gray)
                .padding(.top,1)
                .padding(.bottom)

        }.padding(.leading,20)
    }
}
struct LeadingColonnn:View {
    var body: some View{
        VStack(spacing:15){
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(20)
            VStack(alignment:.leading){
            ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 40, height: 40, alignment: .center)
                .border(Color.black)
                .cornerRadius(10)
                .opacity(0.4)
                Image("di")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }.padding(.bottom)
                Text("Living room")
                    .font(.custom("", size: 15))
                HStack{
                    Image("lock")
                        .resizable()
                        .frame(width: 13, height: 13, alignment: .center)
                    Text("Unlock")
                        .font(.custom("", size: 10))
                        .foregroundColor(.gray)
                }
            }.padding(.trailing,25)
        }
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 150, height: 190, alignment: .center)
                .cornerRadius(20)
            VStack(alignment:.leading){
            ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 40, height: 40, alignment: .center)
                .border(Color.black)
                .cornerRadius(10)
                .opacity(0.4)
                Image("st")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }.padding(.bottom,50)
                Text("Office")
                    .font(.custom("", size: 15))
                HStack{
                    Image("lock")
                        .resizable()
                        .frame(width: 13, height: 13, alignment: .center)
                    Text("Unlock")
                        .font(.custom("", size: 10))
                        .foregroundColor(.gray)
                }
            }.padding(.trailing,50)
        }
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(width: 150, height: 150, alignment: .center)
                    .cornerRadius(20)
                VStack(alignment:.leading){
                ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(width: 40, height: 40, alignment: .center)
                    .border(Color.black)
                    .cornerRadius(10)
                    .opacity(0.4)
                    Image("li")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                }.padding(.bottom)
                    Text("Library")
                        .font(.custom("", size: 15))
                    HStack{
                        Image("lock")
                            .resizable()
                            .frame(width: 13, height: 13, alignment: .center)
                        Text("Unlock")
                            .font(.custom("", size: 10))
                            .foregroundColor(.gray)
                    }
                }.padding(.trailing,50)
            }
        }

    }
}


struct TralingColonn:View {
    var body: some View{
        VStack(spacing:15){
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(width: 150, height: 190, alignment: .center)
                    .cornerRadius(20)
                VStack(alignment:.leading){
                ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(width: 40, height: 40, alignment: .center)
                    .border(Color.black)
                    .cornerRadius(10)
                    .opacity(0.4)
                    Image("ba")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                }.padding(.bottom,50)
                    Text("Living Room")
                        .font(.custom("", size: 15))
                    HStack{
                        Image("lock")
                            .resizable()
                            .frame(width: 13, height: 13, alignment: .center)
                        Text("Unlock")
                            .font(.custom("", size: 10))
                            .foregroundColor(.gray)
                    }
                }.padding(.trailing,25)
            }
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(20)
            VStack(alignment:.leading){
            ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 40, height: 40, alignment: .center)
                .border(Color.black)
                .cornerRadius(10)
                .opacity(0.4)
                Image("ga")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
            }.padding(.bottom)
                Text("Garage")
                    .font(.custom("", size: 15))
                HStack{
                    Image("lock")
                        .resizable()
                        .frame(width: 13, height: 13, alignment: .center)
                    Text("Unlock")
                        .font(.custom("", size: 10))
                        .foregroundColor(.gray)
                }
            }.padding(.trailing,50)
        }
       
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(20)
            VStack(alignment:.leading){
            ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(width: 40, height: 40, alignment: .center)
                .border(Color.black)
                .cornerRadius(10)
                .opacity(0.4)
                Image("ph")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }.padding(.bottom)
                Text("Gallery")
                    .font(.custom("", size: 15))
                HStack{
                    Image("lock")
                        .resizable()
                        .frame(width: 13, height: 13, alignment: .center)
                    Text("Unlock")
                        .font(.custom("", size: 10))
                        .foregroundColor(.gray)
                }
            }.padding(.trailing,50)
        }
        }
        
        
        
    }
}


struct BottomMenu:View{
    var body: some View{
        ZStack{
        Rectangle()
            .border(Color.gray)
            .foregroundColor(.clear)
            .background(Color.white)
            .cornerRadius(40)
            .frame(width: UIScreen.main.bounds.width / 1.1, height: 90, alignment: .center)
            .padding(.top,690)
            
            HStack(spacing:50){
                VStack(spacing:4){
                    Image("hom")
                        .resizable()
                        .frame(width: 26   , height: 26, alignment: .center)
                        
                    Text("Home")
                        .font(.custom("", size: 12))
                }
                VStack(spacing:4){
                    Image("room")
                        .resizable()
                        .frame(width: 26   , height: 26, alignment: .center)
                    Text("Rooms")
                        .font(.custom("", size: 12))
                }
                VStack(spacing:4){
                    Image("se")
                        .resizable()
                        .frame(width: 26   , height: 26, alignment: .center)
                    Text("Security")
                        .font(.custom("", size: 12))
                }
                VStack(spacing:4){
                    Image("set")
                        .resizable()
                        .frame(width: 26   , height: 26, alignment: .center)
                    Text("Settings")
                        .font(.custom("", size: 12))
                }
            }.padding(.top,690)
        }
            
            
    }
}

