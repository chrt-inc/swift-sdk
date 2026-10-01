import Foundation

extension Requests {
    public struct CargoOnFlightBookingClientCreate1: Codable, Hashable, Sendable {
        /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
        public let awbNumber: String?
        public let bookedItinerary: CargoOnFlightBookingItinerary1?
        public let bookedRate: CargoOnFlightBookingRate1?
        public let cargoDimensions: [CargoOnFlightBookingCargoDimension1]
        public let cargoIds: [String]
        public let cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1
        public let schemaVersion: Int
        public let specialHandlingCodes: [SpecialHandlingCodeEnum1]?
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumber: String? = nil,
            bookedItinerary: CargoOnFlightBookingItinerary1? = nil,
            bookedRate: CargoOnFlightBookingRate1? = nil,
            cargoDimensions: [CargoOnFlightBookingCargoDimension1],
            cargoIds: [String],
            cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1,
            schemaVersion: Int,
            specialHandlingCodes: [SpecialHandlingCodeEnum1]? = nil,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumber = awbNumber
            self.bookedItinerary = bookedItinerary
            self.bookedRate = bookedRate
            self.cargoDimensions = cargoDimensions
            self.cargoIds = cargoIds
            self.cargoOnFlightIntegration = cargoOnFlightIntegration
            self.schemaVersion = schemaVersion
            self.specialHandlingCodes = specialHandlingCodes
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
            self.bookedItinerary = try container.decodeIfPresent(CargoOnFlightBookingItinerary1.self, forKey: .bookedItinerary)
            self.bookedRate = try container.decodeIfPresent(CargoOnFlightBookingRate1.self, forKey: .bookedRate)
            self.cargoDimensions = try container.decode([CargoOnFlightBookingCargoDimension1].self, forKey: .cargoDimensions)
            self.cargoIds = try container.decode([String].self, forKey: .cargoIds)
            self.cargoOnFlightIntegration = try container.decode(CargoOnFlightIntegrationEnum1.self, forKey: .cargoOnFlightIntegration)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.specialHandlingCodes = try container.decodeIfPresent([SpecialHandlingCodeEnum1].self, forKey: .specialHandlingCodes)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
            try container.encodeIfPresent(self.bookedItinerary, forKey: .bookedItinerary)
            try container.encodeIfPresent(self.bookedRate, forKey: .bookedRate)
            try container.encode(self.cargoDimensions, forKey: .cargoDimensions)
            try container.encode(self.cargoIds, forKey: .cargoIds)
            try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumber = "awb_number"
            case bookedItinerary = "booked_itinerary"
            case bookedRate = "booked_rate"
            case cargoDimensions = "cargo_dimensions"
            case cargoIds = "cargo_ids"
            case cargoOnFlightIntegration = "cargo_on_flight_integration"
            case schemaVersion = "schema_version"
            case specialHandlingCodes = "special_handling_codes"
            case taskGroupId = "task_group_id"
        }
    }
}