//
//  ObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Shannon, Leandre D. (MU-Student) on 11/2/17.
//  Copyright © 2017 Shannon, Leandre D. (MU-Student). All rights reserved.
//

import Foundation

class ObservationsJSONLoader {
    
    class func load(fileName: String) -> [Observation] {
        var fieldObservations = [Observation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            fieldObservations = ObservationsJSONParser.parse(data)
        }
        
        return fieldObservations
    }
}
