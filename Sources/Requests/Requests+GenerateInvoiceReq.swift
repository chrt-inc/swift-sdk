import Foundation

extension Requests {
    public struct GenerateInvoiceReq: Codable, Hashable, Sendable {
        public let shipperPayCourierStatementId: String
        public let daysUntilDue: Int?
        public let description: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            shipperPayCourierStatementId: String,
            daysUntilDue: Int? = nil,
            description: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.shipperPayCourierStatementId = shipperPayCourierStatementId
            self.daysUntilDue = daysUntilDue
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.shipperPayCourierStatementId = try container.decode(String.self, forKey: .shipperPayCourierStatementId)
            self.daysUntilDue = try container.decodeIfPresent(Int.self, forKey: .daysUntilDue)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.shipperPayCourierStatementId, forKey: .shipperPayCourierStatementId)
            try container.encodeIfPresent(self.daysUntilDue, forKey: .daysUntilDue)
            try container.encodeIfPresent(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case shipperPayCourierStatementId = "shipper_pay_courier_statement_id"
            case daysUntilDue = "days_until_due"
            case description
        }
    }
}