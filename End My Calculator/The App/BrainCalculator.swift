//
//  BrainCalculator.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 7/22/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import Foundation

class Brain_Calculator_Class {
    // 10 + 10 X 10 - 10 =  ->  10 + 100 - 10 =
    
    
    func Add(Number : Double , With Operation : Character)  {
        Num_With_Op_Array.append(CalcElement(Num : Number , Op : Operation ))
        
    }
    
    
    
    typealias CalcElement = (Num : Double , Op : Character)
   
     var Num_With_Op_Array : [CalcElement] = []
    
    
    
    
    func restartArray_Func()  {
        Num_With_Op_Array = []
    }
    
    
    
    func CalculateMultiplyAndDevicedBy_Func()  {
        
        for (index , current) in Num_With_Op_Array.enumerated() {
            if current.Op == "X" || current.Op == "/" {
                
                let afterFound_const = Num_With_Op_Array[index + 1]
                var result_Var : CalcElement!
                
                if current.Op == "X"{
                    result_Var = CalcElement(Num : current.Num * afterFound_const.Num , Op : afterFound_const.Op)
                }else  {
                    result_Var = CalcElement(Num : current.Num / afterFound_const.Num , Op : afterFound_const.Op)
                }
                
                Num_With_Op_Array.remove(at: index) //To remove 10 X
                Num_With_Op_Array.remove(at: index) //To remove 10 -
                Num_With_Op_Array.insert(result_Var, at: index) //To insert 100 -
                CalculateMultiplyAndDevicedBy_Func()
                break
                
            }
        }
        
    }
    
    
    func CalculateMinus_Func() {
        for (index , current) in Num_With_Op_Array.enumerated() {
            if current.Op == "-"{
                
                let afterFound_Const = Num_With_Op_Array[index + 1]
                var result_var : CalcElement!
                
                result_var = CalcElement(Num: current.Num - afterFound_Const.Num , Op: afterFound_Const.Op)
                Num_With_Op_Array.remove(at: index)
                Num_With_Op_Array.remove(at: index)
                Num_With_Op_Array.insert(result_var, at: index)
                CalculateMinus_Func()
                break
            }
        }
    }
    
    
    func result_Func() -> String {
        CalculateMultiplyAndDevicedBy_Func()
        CalculateMinus_Func()
        return String(Num_With_Op_Array.reduce(0, {$0 + $1.Num}))
    }
    
    
    
}

