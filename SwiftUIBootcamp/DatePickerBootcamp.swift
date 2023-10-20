//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Dilip Tiwari on 27/07/23.
//

import SwiftUI

//Bootcamp #40
struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        /*
         DatePicker("Select a Date", selection: $selectedDate)
             .accentColor(.red)
             .datePickerStyle(
                 CompactDatePickerStyle()
                 //GraphicalDatePickerStyle()
                 //WheelDatePickerStyle()
             )
         */
        
        /*
         DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
             .accentColor(.green)
             .datePickerStyle(
                 CompactDatePickerStyle()
             )
         */
        
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
