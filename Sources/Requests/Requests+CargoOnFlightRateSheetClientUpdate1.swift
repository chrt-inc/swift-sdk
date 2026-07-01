import Foundation

extension Requests {
    public struct CargoOnFlightRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let airlineName: String?
        public let airlineNameSetToNone: Bool?
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let name: String?
        public let nameSetToNone: Bool?
        public let quantity: Double?
        public let quantitySetToNone: Bool?
        public let rate: Double?
        public let rateSetToNone: Bool?
        public let serviceTypeName: String?
        public let serviceTypeNameSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            airlineName: String? = nil,
            airlineNameSetToNone: Bool? = nil,
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            name: String? = nil,
            nameSetToNone: Bool? = nil,
            quantity: Double? = nil,
            quantitySetToNone: Bool? = nil,
            rate: Double? = nil,
            rateSetToNone: Bool? = nil,
            serviceTypeName: String? = nil,
            serviceTypeNameSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.airlineName = airlineName
            self.airlineNameSetToNone = airlineNameSetToNone
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.name = name
            self.nameSetToNone = nameSetToNone
            self.quantity = quantity
            self.quantitySetToNone = quantitySetToNone
            self.rate = rate
            self.rateSetToNone = rateSetToNone
            self.serviceTypeName = serviceTypeName
            self.serviceTypeNameSetToNone = serviceTypeNameSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.airlineName = try container.decodeIfPresent(String.self, forKey: .airlineName)
            self.airlineNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .airlineNameSetToNone)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
            self.quantitySetToNone = try container.decodeIfPresent(Bool.self, forKey: .quantitySetToNone)
            self.rate = try container.decodeIfPresent(Double.self, forKey: .rate)
            self.rateSetToNone = try container.decodeIfPresent(Bool.self, forKey: .rateSetToNone)
            self.serviceTypeName = try container.decodeIfPresent(String.self, forKey: .serviceTypeName)
            self.serviceTypeNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .serviceTypeNameSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.airlineName, forKey: .airlineName)
            try container.encodeIfPresent(self.airlineNameSetToNone, forKey: .airlineNameSetToNone)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.quantity, forKey: .quantity)
            try container.encodeIfPresent(self.quantitySetToNone, forKey: .quantitySetToNone)
            try container.encodeIfPresent(self.rate, forKey: .rate)
            try container.encodeIfPresent(self.rateSetToNone, forKey: .rateSetToNone)
            try container.encodeIfPresent(self.serviceTypeName, forKey: .serviceTypeName)
            try container.encodeIfPresent(self.serviceTypeNameSetToNone, forKey: .serviceTypeNameSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case airlineName = "airline_name"
            case airlineNameSetToNone = "airline_name__set_to_None"
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case name
            case nameSetToNone = "name__set_to_None"
            case quantity
            case quantitySetToNone = "quantity__set_to_None"
            case rate
            case rateSetToNone = "rate__set_to_None"
            case serviceTypeName = "service_type_name"
            case serviceTypeNameSetToNone = "service_type_name__set_to_None"
        }
    }
}