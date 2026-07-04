//
//  Patient.swift
//  Spark EHR
//
//  Created by Wascar Gonzalez on 7/4/26.
//

import Foundation

struct Patient: Identifiable, Hashable {
    enum Sex: String, CaseIterable, Hashable {
        case female = "Female"
        case male = "Male"
        case other = "Other"
    }

    let id: UUID
    var mrn: String
    var firstName: String
    var lastName: String
    var dateOfBirth: Date
    var sex: Sex
    var phoneNumber: String
    var bloodType: String
    var allergies: [String]
    var primaryPhysician: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }

    var age: Int {
        Calendar.current.dateComponents([.year], from: dateOfBirth, to: .now).year ?? 0
    }

    init(
        id: UUID = UUID(),
        mrn: String,
        firstName: String,
        lastName: String,
        dateOfBirth: Date,
        sex: Sex,
        phoneNumber: String,
        bloodType: String,
        allergies: [String] = [],
        primaryPhysician: String
    ) {
        self.id = id
        self.mrn = mrn
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.sex = sex
        self.phoneNumber = phoneNumber
        self.bloodType = bloodType
        self.allergies = allergies
        self.primaryPhysician = primaryPhysician
    }
}

extension Patient {
    private static func date(_ year: Int, _ month: Int, _ day: Int) -> Date {
        Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? .now
    }

    static let sampleData: [Patient] = [
        Patient(
            mrn: "MRN-100234",
            firstName: "Ava",
            lastName: "Martinez",
            dateOfBirth: date(1988, 4, 12),
            sex: .female,
            phoneNumber: "(555) 201-3344",
            bloodType: "O+",
            allergies: ["Penicillin"],
            primaryPhysician: "Dr. Sarah Chen"
        ),
        Patient(
            mrn: "MRN-100235",
            firstName: "Liam",
            lastName: "Nguyen",
            dateOfBirth: date(1975, 11, 2),
            sex: .male,
            phoneNumber: "(555) 342-9981",
            bloodType: "A-",
            allergies: [],
            primaryPhysician: "Dr. James Okafor"
        ),
        Patient(
            mrn: "MRN-100236",
            firstName: "Sofia",
            lastName: "Alvarez",
            dateOfBirth: date(2001, 7, 23),
            sex: .female,
            phoneNumber: "(555) 118-2200",
            bloodType: "B+",
            allergies: ["Latex", "Ibuprofen"],
            primaryPhysician: "Dr. Sarah Chen"
        ),
        Patient(
            mrn: "MRN-100237",
            firstName: "Ethan",
            lastName: "Brooks",
            dateOfBirth: date(1959, 2, 17),
            sex: .male,
            phoneNumber: "(555) 675-4410",
            bloodType: "AB+",
            allergies: ["Sulfa drugs"],
            primaryPhysician: "Dr. Priya Patel"
        ),
        Patient(
            mrn: "MRN-100238",
            firstName: "Maya",
            lastName: "Thompson",
            dateOfBirth: date(1994, 9, 30),
            sex: .female,
            phoneNumber: "(555) 823-7765",
            bloodType: "O-",
            allergies: [],
            primaryPhysician: "Dr. James Okafor"
        ),
        Patient(
            mrn: "MRN-100239",
            firstName: "Noah",
            lastName: "Kim",
            dateOfBirth: date(2015, 5, 8),
            sex: .male,
            phoneNumber: "(555) 490-1123",
            bloodType: "A+",
            allergies: ["Peanuts"],
            primaryPhysician: "Dr. Priya Patel"
        )
    ]
}
