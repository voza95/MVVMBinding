//
//  RegistrationViewModel.swift
//  MVVMBinding
//
//  Created by Mohammad Azam on 12/4/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    var listener :Listener?
    
    func bind(listener :Listener?) {
        self.listener = listener
        listener?(value!)
    }
    
    var value :T? {
        didSet {
            listener?(value!)
        }
    }
    
    init(_ v:T) {
        value = v
    }
    
}

class RegistrationViewModel {
    
    var email :String!
    var password :String! 
}
