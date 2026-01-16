import Foundation

extension Requests {
    public struct SetServiceTypeReq: Codable, Hashable, Sendable {
        /// The service type for this task group (routed or on_demand)
        public let serviceType: ServiceTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            serviceType: ServiceTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.serviceType = serviceType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.serviceType = try container.decode(ServiceTypeEnum1.self, forKey: .serviceType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.serviceType, forKey: .serviceType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case serviceType = "service_type"
        }
    }
}