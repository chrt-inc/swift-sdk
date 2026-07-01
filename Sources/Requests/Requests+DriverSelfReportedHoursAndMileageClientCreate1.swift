import Foundation

extension Requests {
    public struct DriverSelfReportedHoursAndMileageClientCreate1: Codable, Hashable, Sendable {
        public let date: String
        public let driverId: String
        public let hoursWorked: Double?
        public let milesDriven: Double?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            date: String,
            driverId: String,
            hoursWorked: Double? = nil,
            milesDriven: Double? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.date = date
            self.driverId = driverId
            self.hoursWorked = hoursWorked
            self.milesDriven = milesDriven
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.date = try container.decode(String.self, forKey: .date)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.hoursWorked = try container.decodeIfPresent(Double.self, forKey: .hoursWorked)
            self.milesDriven = try container.decodeIfPresent(Double.self, forKey: .milesDriven)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.driverId, forKey: .driverId)
            try container.encodeIfPresent(self.hoursWorked, forKey: .hoursWorked)
            try container.encodeIfPresent(self.milesDriven, forKey: .milesDriven)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case date
            case driverId = "driver_id"
            case hoursWorked = "hours_worked"
            case milesDriven = "miles_driven"
            case schemaVersion = "schema_version"
        }
    }
}