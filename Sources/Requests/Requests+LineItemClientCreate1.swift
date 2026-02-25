import Foundation

extension Requests {
    public struct LineItemClientCreate1: Codable, Hashable, Sendable {
        public let adjustment: Double?
        public let adjustmentComments: String?
        public let comments: String?
        public let item: LineItemEnum1
        public let quantity: Double
        public let rate: Double
        public let schemaVersion: Int?
        public let units: UnitsEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            adjustment: Double? = nil,
            adjustmentComments: String? = nil,
            comments: String? = nil,
            item: LineItemEnum1,
            quantity: Double,
            rate: Double,
            schemaVersion: Int? = nil,
            units: UnitsEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.adjustment = adjustment
            self.adjustmentComments = adjustmentComments
            self.comments = comments
            self.item = item
            self.quantity = quantity
            self.rate = rate
            self.schemaVersion = schemaVersion
            self.units = units
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
            self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.item = try container.decode(LineItemEnum1.self, forKey: .item)
            self.quantity = try container.decode(Double.self, forKey: .quantity)
            self.rate = try container.decode(Double.self, forKey: .rate)
            self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
            self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
            try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encode(self.item, forKey: .item)
            try container.encode(self.quantity, forKey: .quantity)
            try container.encode(self.rate, forKey: .rate)
            try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.units, forKey: .units)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case adjustment
            case adjustmentComments = "adjustment_comments"
            case comments
            case item
            case quantity
            case rate
            case schemaVersion = "schema_version"
            case units
        }
    }
}