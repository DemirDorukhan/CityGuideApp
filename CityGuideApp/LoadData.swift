//
//  LoadData.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import Foundation

final class ModelData : ObservableObject {
    
    @Published var cities : [City] = load("CityGuideData.json")
    
}

func load <T:Decodable> (_ filename : String) -> T {
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("couldn't find \(filename)")
    }
    
    
            let data : Data
            
            do {
                data = try Data(contentsOf: file)
            }catch{
                fatalError("couldn't load \(filename)")
            }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("couldn't fetch \(filename)")
    }
    
    
}
