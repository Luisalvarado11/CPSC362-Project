//
//  user_assumptions.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 9/13/22.
//

import SwiftUI

// a struct for schools
struct schoolsInfo {
    var name: String
    var GPA: Double
    var major: String
}

struct user_assumptions: View {
    
    @State private var gpa: String = ""
    @State private var major: String = ""
    
    // schools created with the struct
    let CSUF = schoolsInfo(name: "CSUF", GPA: 2.49, major: "Business")
    let CALPOLY = schoolsInfo(name: "CALPOLY", GPA: 4.0, major: "Philosphy")
    let CSULB = schoolsInfo(name: "CSULB", GPA: 3.3, major: "Business")
    
    private let school = ["CSUF", "CALPOLY", "CSULB"]
    
    // creating the code to print the string
    func assumeForGpa(_ assume: String) -> String {
        let user = Double(assume)
        var something = ""
        if user == CSUF.GPA {
            something = CSUF.name
        }
        return String(something)
    }
    
    // creating the code to print the string
    func assumeForMajor(_ assume: String) -> String {
        let user = major
        var something = ""
        if user == CSUF.major {
            something = CSUF.name
        }
        return String(something)
    }
    
    //shows the phone
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text(" Assumptions Page")
                .font(.title)
                .foregroundColor(.black)
                .fontWeight(.bold)
            
            // other code
            VStack {
                Form {
                    Section(header: Text("GPA")) {
                        TextField("Enter Your GPA:", text: $gpa)
                            .keyboardType(.decimalPad)
                        
                    }
                    .padding()
                    
                    Section(header: Text("Major")) {
                        TextField("Enter your a major ", text: $major)
                            .keyboardType(.default)
                    }
                    .padding()
                    
                    // header for school
                    Section(header: Text("School")) {
                        // first: takes the converted amount
                        // second: displaying the information
                        Text("\(assumeForGpa(gpa))")
                        Text("\(assumeForMajor(major))")
                    }
                    .padding()
                }
            }
        }
        .background(.gray)
    }
}
        
struct user_assumptions_Previews: PreviewProvider {
    static var previews: some View {
        user_assumptions()
            .previewInterfaceOrientation(.portrait)
    }
}



