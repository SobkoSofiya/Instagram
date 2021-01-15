//
//  ContentView.swift
//  Instagram
//
//  Created by Sofi on 15.01.2021.
//

import SwiftUI


extension String{
    func load() -> UIImage {
        do{
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data:Data = try Data(contentsOf: url)
            return UIImage(data: data)
            ?? UIImage()
        } catch{
            
        }
        return UIImage()
    }
}

struct ContentView: View {
    @State var n = News()
    @State var h = History()
    @State var er = false
    var body: some View {
        ScrollView{
//        NavigationView{
        VStack{
            ScrollView(.horizontal){
                HStack{
                ForEach(h.gymh, id:  \.self){ stroke in
                   
                    
                    Image(uiImage: (stroke.imag).load())
                        
                        
                        .resizable()
                        
                        .frame(width: 60 , height: 60, alignment: .center)
                        
                    }
                    
                }
            }.padding(.leading,32)
            .padding(.trailing,32)
            ScrollView(.vertical){
            VStack(alignment:.leading){
                HStack(spacing:20){
            Image(uiImage: "https://do-slez.com/uploads/posts/2020-09/1599082886_1.jpg".load()).resizable().frame(width: 40, height: 40, alignment: .center)
                    Text("inna.gosteva")
                        .font(.custom("", size: 15))
                }.padding(.leading)
            ForEach(n.gymn, id:  \.self){ stroke in
                VStack(alignment:.leading, spacing: 15){
                Image(uiImage: (stroke.img).load())
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width , height: 450, alignment: .center)
                    VStack(alignment:.leading){
                    HStack(spacing:15){
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 25, height: 20, alignment: .center)
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 25, height: 20, alignment: .center)
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 25, height: 20, alignment: .center)
                        
                        
                    }.padding(.top,5)
                    .padding(.bottom,5)
                    Text("710 просмотров ▪︎ Нравится kris и еще 61")
                    .font(.custom("Roboto", size: 14)).bold()
                        HStack(alignment:.top){
                            
                            if er == false{
                                Text(" inna.gosteva  Маникюр не зря называют визитной карточкой девушки, ведь по состоянию рук можно определить: кем она работает и чем занимается Самые счастливые девушки, как правило, имеют самый ухоженный маникюр Никогда не забывайте о маникюре. Руки – второй, что бросается в глаза после лица; Ухоженные руки, как точка в конце предложения. Всегда дополняют целостный образ Маникюр может много рассказать о человеке. Если в его жизни непорядок, поверьте, его руки будут в таком же состоянии"
                                ).font(.custom("Roboto", size: 14)).lineLimit(1)
                            } else {
                                Text(" inna.gosteva  Маникюр не зря называют визитной карточкой девушки, ведь по состоянию рук можно определить: кем она работает и чем занимается Самые счастливые девушки, как правило, имеют самый ухоженный маникюр Никогда не забывайте о маникюре. Руки – второй, что бросается в глаза после лица; Ухоженные руки, как точка в конце предложения. Всегда дополняют целостный образ Маникюр может много рассказать о человеке. Если в его жизни непорядок, поверьте, его руки будут в таком же состоянии"
                                ).font(.custom("Roboto", size: 14))
                            }
                            Button(action: {
                                er.toggle()
                              
                            }, label: {
                                Text("ещё")
                                    .font(.custom("Roboto", size: 14))
                                    .foregroundColor(.gray)
                            })
                        }
                   
               
                    }.padding(.leading)
                }
                    
            }
            }
        }
        }
            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
