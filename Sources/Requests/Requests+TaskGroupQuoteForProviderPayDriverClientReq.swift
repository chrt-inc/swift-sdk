import Foundation

extension Requests {
    public struct TaskGroupQuoteForProviderPayDriverClientReq: Codable, Hashable, Sendable {
        public let driverId: String
        public let rateSheetId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            driverId: String,
            rateSheetId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.driverId = driverId
            self.rateSheetId = rateSheetId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.driverId, forKey: .driverId)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case driverId = "driver_id"
            case rateSheetId = "rate_sheet_id"
        }
    }
}