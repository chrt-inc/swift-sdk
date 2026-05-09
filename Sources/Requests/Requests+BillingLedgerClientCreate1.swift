import Foundation

extension Requests {
    public struct BillingLedgerClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let taskGroupType: TaskGroupTypeEnum1?
        public let comments: String?
        /// Must be a string starting with `org_`
        public let paymentOriginOrgId: String?
        public let paymentOriginOffChrtShipperOrgId: String?
        /// Must be a string starting with `org_`
        public let paymentDestinationOrgId: String?
        public let paymentDestinationOffChrtProviderOrgId: String?
        public let paymentDestinationDriverId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            taskGroupType: TaskGroupTypeEnum1? = nil,
            comments: String? = nil,
            paymentOriginOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentDestinationOffChrtProviderOrgId: String? = nil,
            paymentDestinationDriverId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.taskGroupType = taskGroupType
            self.comments = comments
            self.paymentOriginOrgId = paymentOriginOrgId
            self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.taskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.taskGroupType, forKey: .taskGroupType)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case taskGroupType = "task_group_type"
            case comments
            case paymentOriginOrgId = "payment_origin_org_id"
            case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
        }
    }
}