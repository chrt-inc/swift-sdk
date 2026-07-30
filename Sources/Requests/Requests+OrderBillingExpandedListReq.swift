import Foundation

extension Requests {
    public struct OrderBillingExpandedListReq: Codable, Hashable, Sendable {
        public let expandAccountNames: Bool?
        public let expandExecutorNames: Bool?
        public let expandShipperName: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            expandAccountNames: Bool? = nil,
            expandExecutorNames: Bool? = nil,
            expandShipperName: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.expandAccountNames = expandAccountNames
            self.expandExecutorNames = expandExecutorNames
            self.expandShipperName = expandShipperName
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.expandAccountNames = try container.decodeIfPresent(Bool.self, forKey: .expandAccountNames)
            self.expandExecutorNames = try container.decodeIfPresent(Bool.self, forKey: .expandExecutorNames)
            self.expandShipperName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperName)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.expandAccountNames, forKey: .expandAccountNames)
            try container.encodeIfPresent(self.expandExecutorNames, forKey: .expandExecutorNames)
            try container.encodeIfPresent(self.expandShipperName, forKey: .expandShipperName)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case expandAccountNames = "expand_account_names"
            case expandExecutorNames = "expand_executor_names"
            case expandShipperName = "expand_shipper_name"
        }
    }
}