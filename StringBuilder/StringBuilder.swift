//
//  StringBuilder.swift
//  StringBuilder
//
//  Created by Matthew Wyskiel on 9/30/14.
//  Copyright (c) 2014 Matthew Wyskiel. All rights reserved.
//

import Foundation

public class StringBuilder {
    
    private(set) var string: String
    
    public init() {
        string = ""
    }
    
    public init(string: String) {
        self.string = string
    }
    
    public func append<T>(_ itemToAppend: T) -> Self {
        self.string += "\(itemToAppend)"
        return self
    }
    
    public func insert<T>(_ item: T, at index: Int) -> Self {
        let mutableString = NSMutableString(string: self.string)
        mutableString.insert("\(item)", at: index)
        self.string = mutableString as String
        return self
    }
    
    public func toString() -> String {
        return string;
    }
   
}
