import Foundation

extension Requests {
    public struct DriverSelfReportedHoursAndMileageClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let driverId: String
        public let date: String
        public let hoursWorked: Double?
        public let milesDriven: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            driverId: String,
            date: String,
            hoursWorked: Double? = nil,
            milesDriven: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.driverId = driverId
            self.date = date
            self.hoursWorked = hoursWorked
            self.milesDriven = milesDriven
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.date = try container.decode(String.self, forKey: .date)
            self.hoursWorked = try container.decodeIfPresent(Double.self, forKey: .hoursWorked)
            self.milesDriven = try container.decodeIfPresent(Double.self, forKey: .milesDriven)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.driverId, forKey: .driverId)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.hoursWorked, forKey: .hoursWorked)
            try container.encodeIfPresent(self.milesDriven, forKey: .milesDriven)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case driverId = "driver_id"
            case date
            case hoursWorked = "hours_worked"
            case milesDriven = "miles_driven"
        }
    }
}