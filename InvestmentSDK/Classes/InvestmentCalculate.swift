//
//  InvestmentCalculate.swift
//  InvestmentSDK
//
//  Created by Amrendra on 19/12/2020.
//

import Foundation

public class InvestmentCalculate {
    
    private var interestRate: Double = 6.0 //default rate
    
    public init(with interestRate: Double? = 6.0) {
        self.interestRate = interestRate!
    }
    
    public func calculateRD(for incomLimit: Double) -> Double {
        let rd = incomLimit * interestRate
        return rd
    }
    
    public func accessPrivateMethod() {
        privateTestMethod()
        print("you are accessing by Public helper method")
    }
}

// MARK: Private stuff
extension InvestmentCalculate {
    
    private func privateTestMethod() {
        print("Hi, I am private method")
    }
}
