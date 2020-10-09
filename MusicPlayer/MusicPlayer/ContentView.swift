//
//  ContentView.swift
//  MusicPlayer
//
//  Created by 荣翔 on 2020/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home:View {
    
    @State var show = false
    @State var progress :CGFloat = 0
    @Namespace var namespace
    var body: some View  {
        VStack{
            Spacer()
            VStack {
                Spacer()

                HStack(spacing:15){

                    Image("album").resizable()
                        .frame(width:self.show ? 250: 50, height: self.show ? 250: 50, alignment: .center).padding(.top,self.show ? 35 :0)
                    if !self.show{
                        VStack(alignment: .leading, spacing: 4){
                            Text("You need to calm down")
                            Text("Jay").foregroundColor(.blue)
                        }.matchedGeometryEffect(id: "Details", in: self.namespace)
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "play.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black )
                        }).matchedGeometryEffect(id: "play", in: self.namespace)
                        Spacer()
                    }

                }
                if self.show{

                    VStack(alignment: .center, spacing: 4){
                        Text("You need to calm down")
                        Text("Jay").foregroundColor(.blue)
                    }.matchedGeometryEffect(id: "Details", in: self.namespace)

                    Slider(value: self.$progress)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "backward.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black )
                        })
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "play.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black )
                        }).matchedGeometryEffect(id: "play", in: self.namespace)
                        Spacer()

                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "forward.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black )
                        })

                    }.padding(.horizontal)
                    Spacer()

                    HStack{
                        Button(action: {},label:{
                            Image(systemName: "square.and.arrow.down.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black )
                            Spacer()
                        })
                        
                    }
                    Spacer()

                }

            }.padding(.all).background(Color.white.shadow(radius: 3 )).onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                withAnimation(Animation.easeOut(duration: 0.4)){
                    self.show.toggle()
                }
            })

        }.background(Color.black.opacity(0.06 ))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
}
