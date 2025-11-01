import Foundation

extension Requests {
    public struct CreateOrderReq: Codable, Hashable, Sendable {
        public let orderClientCreate: OrderClientCreate1
        /// These become Task Groups
        public let taskClientCreatesBundleGroupings: [[TaskCreateBundle]]
        /// A cargo may be shared by Tasks so we use a mapping
        public let cargoClientCreatesMap: [String: CargoClientCreate1]
        public let orderCreatedByType: OrderCreatedByTypeEnum
        /// If a shipper or chrt creates an order, this field is required.
        public let orderDispatchType: OrderDispatchTypeEnum
        public let transportType: TransportTypeEnum
        /// Optionally used when a courier places a DTC order or chrt places a DTC/FF order
        public let shipperOrgId: String?
        /// Must be a string starting with `user_`
        public let shipperUserId: String?
        /// Used for off-platform shipper orders. Mutually exclusive with shipper_org_id.
        public let offChrtShipperOrgInfoId: String?
        /// For DTC orders placed by shippers or chrt, this field is required.
        public let courierOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderClientCreate: OrderClientCreate1,
            taskClientCreatesBundleGroupings: [[TaskCreateBundle]],
            cargoClientCreatesMap: [String: CargoClientCreate1],
            orderCreatedByType: OrderCreatedByTypeEnum,
            orderDispatchType: OrderDispatchTypeEnum,
            transportType: TransportTypeEnum,
            shipperOrgId: String? = nil,
            shipperUserId: String? = nil,
            offChrtShipperOrgInfoId: String? = nil,
            courierOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderClientCreate = orderClientCreate
            self.taskClientCreatesBundleGroupings = taskClientCreatesBundleGroupings
            self.cargoClientCreatesMap = cargoClientCreatesMap
            self.orderCreatedByType = orderCreatedByType
            self.orderDispatchType = orderDispatchType
            self.transportType = transportType
            self.shipperOrgId = shipperOrgId
            self.shipperUserId = shipperUserId
            self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
            self.courierOrgId = courierOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderClientCreate = try container.decode(OrderClientCreate1.self, forKey: .orderClientCreate)
            self.taskClientCreatesBundleGroupings = try container.decode([[TaskCreateBundle]].self, forKey: .taskClientCreatesBundleGroupings)
            self.cargoClientCreatesMap = try container.decode([String: CargoClientCreate1].self, forKey: .cargoClientCreatesMap)
            self.orderCreatedByType = try container.decode(OrderCreatedByTypeEnum.self, forKey: .orderCreatedByType)
            self.orderDispatchType = try container.decode(OrderDispatchTypeEnum.self, forKey: .orderDispatchType)
            self.transportType = try container.decode(TransportTypeEnum.self, forKey: .transportType)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperUserId = try container.decodeIfPresent(String.self, forKey: .shipperUserId)
            self.offChrtShipperOrgInfoId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgInfoId)
            self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderClientCreate, forKey: .orderClientCreate)
            try container.encode(self.taskClientCreatesBundleGroupings, forKey: .taskClientCreatesBundleGroupings)
            try container.encode(self.cargoClientCreatesMap, forKey: .cargoClientCreatesMap)
            try container.encode(self.orderCreatedByType, forKey: .orderCreatedByType)
            try container.encode(self.orderDispatchType, forKey: .orderDispatchType)
            try container.encode(self.transportType, forKey: .transportType)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperUserId, forKey: .shipperUserId)
            try container.encodeIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
            try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderClientCreate = "order_client_create"
            case taskClientCreatesBundleGroupings = "task_client_creates_bundle_groupings"
            case cargoClientCreatesMap = "cargo_client_creates_map"
            case orderCreatedByType = "order_created_by_type"
            case orderDispatchType = "order_dispatch_type"
            case transportType = "transport_type"
            case shipperOrgId = "shipper_org_id"
            case shipperUserId = "shipper_user_id"
            case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
            case courierOrgId = "courier_org_id"
        }
    }
}