import Foundation

extension Requests {
    public struct CargoByDriverSharingSettingsUpdateReq: Codable, Hashable, Sendable {
        public let taskGroupId: String
        public let cargoId: String
        public let driverId: String
        public let `public`: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupId: String,
            cargoId: String,
            driverId: String,
            public: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupId = taskGroupId
            self.cargoId = cargoId
            self.driverId = driverId
            self.public = `public`
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.cargoId = try container.decode(String.self, forKey: .cargoId)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.public = try container.decode(Bool.self, forKey: .public)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
            try container.encode(self.cargoId, forKey: .cargoId)
            try container.encode(self.driverId, forKey: .driverId)
            try container.encode(self.public, forKey: .public)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupId = "task_group_id"
            case cargoId = "cargo_id"
            case driverId = "driver_id"
            case `public`
        }
    }
}