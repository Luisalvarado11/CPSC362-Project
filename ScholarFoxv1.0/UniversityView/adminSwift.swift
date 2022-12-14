//
//  adminSwift.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/5/22.
//

import SwiftUI

struct adminSwift: View {
    var UCDetail: Uuniversity
    var body: some View {
        Spacer()
        Group {
            Text("Admissions")
                .font(.system(.largeTitle, design: .serif))
                .padding()
            
            Image(systemName: "graduationcap.fill")
                .foregroundColor(Color.yellow)
            
                .padding()
            
            HStack(alignment: .center, spacing: 30) {
                Text("Institution Type: Public")
                    .font(.system(.body, design: .serif))
                Text("4 Year University")
                    .font(.system(.body, design: .serif))
            }
            
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .foregroundColor(Color.blue)
                .padding()
            
            HStack(alignment: .center, spacing: 30) {
                Text("Acceptance Rate: \(UCDetail.acceptanceRating)")
                    .font(.system(.body, design: .serif))
                
                Text("Transfer Rate: \(UCDetail.transfer)")
                    .font(.system(.body, design: .serif))
            }
            Image(systemName: "list.clipboard")
                .foregroundColor(Color.gray)
                .padding()
            HStack(alignment: .center, spacing: 30) {
                Text("Students Enrolled by GPA: \(UCDetail.gpa)")
                    .font(.system(.body, design: .serif))
            }
        }
    }
}

struct adminSwift_Previews: PreviewProvider {
    static var previews: some View {
        adminSwift(UCDetail: uc[1])
    }
}
