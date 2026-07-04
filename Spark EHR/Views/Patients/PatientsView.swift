//
//  PatientsView.swift
//  Spark EHR
//
//  Created by Wascar Gonzalez on 7/4/26.
//

import SwiftUI

struct PatientsView: View {
    let patients: [Patient] = Patient.sampleData

    var body: some View {
        List(patients) { patient in
            VStack(alignment: .leading, spacing: 4) {
                Text(patient.fullName)
                    .font(.headline)
                Text("MRN \(patient.mrn) · Age \(patient.age) · \(patient.sex.rawValue)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                if !patient.allergies.isEmpty {
                    Text("Allergies: \(patient.allergies.joined(separator: ", "))")
                        .font(.caption)
                        .foregroundStyle(.red)
                }
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Patients")
    }
}

#Preview {
    PatientsView()
}

