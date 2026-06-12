import Foundation

extension Requests {
    public struct DriverSelfReportedHoursAndMileageClientUpdate1: Codable, Hashable, Sendable {
        public let hoursWorked: Double?
        public let milesDriven: Double?
        public let hoursWorkedSetToNone: Bool?
        public let milesDrivenSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            hoursWorked: Double? = nil,
            milesDriven: Double? = nil,
            hoursWorkedSetToNone: Bool? = nil,
            milesDrivenSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.hoursWorked = hoursWorked
            self.milesDriven = milesDriven
            self.hoursWorkedSetToNone = hoursWorkedSetToNone
            self.milesDrivenSetToNone = milesDrivenSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.hoursWorked = try container.decodeIfPresent(Double.self, forKey: .hoursWorked)
            self.milesDriven = try container.decodeIfPresent(Double.self, forKey: .milesDriven)
            self.hoursWorkedSetToNone = try container.decodeIfPresent(Bool.self, forKey: .hoursWorkedSetToNone)
            self.milesDrivenSetToNone = try container.decodeIfPresent(Bool.self, forKey: .milesDrivenSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.hoursWorked, forKey: .hoursWorked)
            try container.encodeIfPresent(self.milesDriven, forKey: .milesDriven)
            try container.encodeIfPresent(self.hoursWorkedSetToNone, forKey: .hoursWorkedSetToNone)
            try container.encodeIfPresent(self.milesDrivenSetToNone, forKey: .milesDrivenSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case hoursWorked = "hours_worked"
            case milesDriven = "miles_driven"
            case hoursWorkedSetToNone = "hours_worked__set_to_None"
            case milesDrivenSetToNone = "miles_driven__set_to_None"
        }
    }
}