//
//  CircleImage.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
        
        image
       
            .resizable()
            .frame(width : UIScreen.main.bounds.width * 0.75, height: UIScreen.main.bounds.width * 0.75)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Eiffel"))
    }
}
