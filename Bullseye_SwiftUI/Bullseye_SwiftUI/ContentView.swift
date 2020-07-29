//
//  ContentView.swift
//  Bullseye_SwiftUI
//
//  Created by James Choi on 2020/07/28.
//  Copyright © 2020 James Choi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //alertIsVisible이라는 부울리언 변수 선언
    //@State가 뭔지는 더 알아봐야함
    @State var alertIsVisible: Bool = false
    
    
    //body라는 이름의 변수,
    //some View는 body라는 변수가 View라는것을 나타냄
    //View가 아닐수도 있긴함
    var body: some View {
        //수직으로 object를 넣는게 VStack
        VStack{
            //텍스트 오브젝트
            Text("My First iOS app!!!!")
                .fontWeight(.bold)//얘도 메소드
                .foregroundColor(Color.red) //얘도 메소드
            //버튼 오브젝트
            Button(action:{
                //버튼이 눌렀음을 쉘에서 확인할 수 있게 해주는 print메소드
                print("Button Pressed!")
                print(self.alertIsVisible)
                self.alertIsVisible = true
            }){
                Text("확인")
            }
                //alertIsVisible이 true일때 .alert가 출력
                //내용은 아래처럼 추가
                //버튼이 눌리고 나면 alertIsVislble 변수는 다시 false로 돌아가는듯?
                .alert(isPresented: $alertIsVisible){ () ->
                    Alert in
                    return Alert(title: Text("안녕!"), message: Text("팝업 메세지입니당"), dismissButton: .default(Text("WOWOWOWOW!")))
            }
        
        }
        
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        //width: 896, height: 414 -> 아이폰의 일반적인 point 비율이다.
        ContentView().previewLayout(.fixed(width: 896, height: 414))
        
    }
}
