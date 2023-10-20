//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 28/07/23.
//

import SwiftUI

//Bootcamp #41
struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + CGFloat(widthIncrement), height: 100)
            
            
            Stepper("Stepper 2") {
                // increment
                incrementWidth(amount: 100)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -100)
            }
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += Int(amount)
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
