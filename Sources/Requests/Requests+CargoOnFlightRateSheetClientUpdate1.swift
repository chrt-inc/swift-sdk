import Foundation

extension Requests {
    public struct CargoOnFlightRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let comments: String?
        public let airlineName: String?
        public let serviceTypeName: String?
        public let quantity: Double?
        public let rate: Double?
        public let nameSetToNone: Bool?
        public let commentsSetToNone: Bool?
        public let airlineNameSetToNone: Bool?
        public let serviceTypeNameSetToNone: Bool?
        public let quantitySetToNone: Bool?
        public let rateSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            comments: String? = nil,
            airlineName: String? = nil,
            serviceTypeName: String? = nil,
            quantity: Double? = nil,
            rate: Double? = nil,
            nameSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            airlineNameSetToNone: Bool? = nil,
            serviceTypeNameSetToNone: Bool? = nil,
            quantitySetToNone: Bool? = nil,
            rateSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.comments = comments
            self.airlineName = airlineName
            self.serviceTypeName = serviceTypeName
            self.quantity = quantity
            self.rate = rate
            self.nameSetToNone = nameSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.airlineNameSetToNone = airlineNameSetToNone
            self.serviceTypeNameSetToNone = serviceTypeNameSetToNone
            self.quantitySetToNone = quantitySetToNone
            self.rateSetToNone = rateSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.airlineName = try container.decodeIfPresent(String.self, forKey: .airlineName)
            self.serviceTypeName = try container.decodeIfPresent(String.self, forKey: .serviceTypeName)
            self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
            self.rate = try container.decodeIfPresent(Double.self, forKey: .rate)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.airlineNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .airlineNameSetToNone)
            self.serviceTypeNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .serviceTypeNameSetToNone)
            self.quantitySetToNone = try container.decodeIfPresent(Bool.self, forKey: .quantitySetToNone)
            self.rateSetToNone = try container.decodeIfPresent(Bool.self, forKey: .rateSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.airlineName, forKey: .airlineName)
            try container.encodeIfPresent(self.serviceTypeName, forKey: .serviceTypeName)
            try container.encodeIfPresent(self.quantity, forKey: .quantity)
            try container.encodeIfPresent(self.rate, forKey: .rate)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.airlineNameSetToNone, forKey: .airlineNameSetToNone)
            try container.encodeIfPresent(self.serviceTypeNameSetToNone, forKey: .serviceTypeNameSetToNone)
            try container.encodeIfPresent(self.quantitySetToNone, forKey: .quantitySetToNone)
            try container.encodeIfPresent(self.rateSetToNone, forKey: .rateSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case comments
            case airlineName = "airline_name"
            case serviceTypeName = "service_type_name"
            case quantity
            case rate
            case nameSetToNone = "name__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
            case airlineNameSetToNone = "airline_name__set_to_None"
            case serviceTypeNameSetToNone = "service_type_name__set_to_None"
            case quantitySetToNone = "quantity__set_to_None"
            case rateSetToNone = "rate__set_to_None"
        }
    }
}