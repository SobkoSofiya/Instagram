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
        ScrollView(){
       
            ForEach(n.gymn, id:  \.self){ stroke in
                VStack(alignment:.leading){
                Image(uiImage: (stroke.img).load())
                    .resizable()
                    .frame(width: 350 , height: 350, alignment: .center)
                Text("Hahaahahah")
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
