//
//  TitleRow.swift
//  Chat App
//
//  Created by Dinith Hasaranga on 2023-02-17.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://media.licdn.com/dms/image/D5603AQHvGr7G4mEeeA/profile-displayphoto-shrink_800_800/0/1672319428677?e=2147483647&v=beta&t=4Z0cU735K6moYeuuSCg2LJzoSteDwmIjqyi5RV7trOc")
    var Name = "Dinth Perera"
    var body: some View {
        HStack(spacing: 20){
            
               AsyncImage(url: imageUrl) { img in
                   img.resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width : 50 , height : 50)
                       .cornerRadius(50)
                   
                   
               }
        placeholder: {
            ProgressView()
        }
            VStack(alignment: .leading) {
                Text(Name)
                    .font(.title).bold()
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
