import Foundation
import Testing
import Chrt

@Suite("BidThreadsClient Wire Tests") struct BidThreadsClientWireTests {
    @Test func byIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "listing_id": "listing_id",
                  "bidder_provider_org_id": "bidder_provider_org_id",
                  "bidder_driver_id": "bidder_driver_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "status": "open",
                  "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                  "bids": [
                    {
                      "action": "submit",
                      "pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "rate": 1.1,
                          "quantity": 1.1,
                          "provenance": "rate_sheet"
                        }
                      ],
                      "comment": "comment",
                      "acted_by_user_id": "acted_by_user_id",
                      "from_lister": true,
                      "created_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "accepted_pro_forma_line_items": [
                    {
                      "schema_version": 1,
                      "comments": "comments",
                      "item": "base_rate",
                      "units": "usd",
                      "rate": 1.1,
                      "quantity": 1.1,
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "provenance": "rate_sheet",
                      "rate_sheet_id": "rate_sheet_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BidThread1(
            schemaVersion: Optional(1),
            listingId: "listing_id",
            bidderProviderOrgId: Optional("bidder_provider_org_id"),
            bidderDriverId: Optional("bidder_driver_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            status: .open,
            statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            bids: [
                Bid(
                    action: .submit,
                    proFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            rate: 1.1,
                            quantity: 1.1,
                            provenance: .rateSheet
                        )
                    ]),
                    comment: Optional("comment"),
                    actedByUserId: "acted_by_user_id",
                    fromLister: true,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            acceptedProFormaLineItems: Optional([
                ProFormaLineItem1(
                    schemaVersion: Optional(1),
                    comments: Optional("comments"),
                    item: .baseRate,
                    units: Optional(.usd),
                    rate: 1.1,
                    quantity: 1.1,
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    provenance: .rateSheet,
                    rateSheetId: Optional("rate_sheet_id"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            id: "_id"
        )
        let response = try await client.listing.bidThreads.byIdV1(
            bidThreadId: "bid_thread_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForListingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "listing_id": "listing_id",
                      "bidder_provider_org_id": "bidder_provider_org_id",
                      "bidder_driver_id": "bidder_driver_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "open",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                      "bids": [
                        {
                          "action": "submit",
                          "acted_by_user_id": "acted_by_user_id",
                          "from_lister": true,
                          "created_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "accepted_pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "rate": 1.1,
                          "quantity": 1.1,
                          "provenance": "rate_sheet"
                        }
                      ],
                      "_id": "_id"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BidThreadListRes(
            items: [
                BidThread1(
                    schemaVersion: Optional(1),
                    listingId: "listing_id",
                    bidderProviderOrgId: Optional("bidder_provider_org_id"),
                    bidderDriverId: Optional("bidder_driver_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    status: .open,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    bids: [
                        Bid(
                            action: .submit,
                            actedByUserId: "acted_by_user_id",
                            fromLister: true,
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ],
                    acceptedProFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            rate: 1.1,
                            quantity: 1.1,
                            provenance: .rateSheet
                        )
                    ]),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.bidThreads.listForListingV1(
            listingId: "listing_id",
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterStatus: [
                .open
            ],
            filterListingId: "filter_listing_id",
            filterBidderProviderOrgId: "filter_bidder_provider_org_id",
            filterBidderDriverId: "filter_bidder_driver_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForBidderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "listing_id": "listing_id",
                      "bidder_provider_org_id": "bidder_provider_org_id",
                      "bidder_driver_id": "bidder_driver_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "open",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                      "bids": [
                        {
                          "action": "submit",
                          "acted_by_user_id": "acted_by_user_id",
                          "from_lister": true,
                          "created_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "accepted_pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "rate": 1.1,
                          "quantity": 1.1,
                          "provenance": "rate_sheet"
                        }
                      ],
                      "_id": "_id"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BidThreadListRes(
            items: [
                BidThread1(
                    schemaVersion: Optional(1),
                    listingId: "listing_id",
                    bidderProviderOrgId: Optional("bidder_provider_org_id"),
                    bidderDriverId: Optional("bidder_driver_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    status: .open,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    bids: [
                        Bid(
                            action: .submit,
                            actedByUserId: "acted_by_user_id",
                            fromLister: true,
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ],
                    acceptedProFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            rate: 1.1,
                            quantity: 1.1,
                            provenance: .rateSheet
                        )
                    ]),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.bidThreads.listForBidderV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterStatus: [
                .open
            ],
            filterListingId: "filter_listing_id",
            filterBidderProviderOrgId: "filter_bidder_provider_org_id",
            filterBidderDriverId: "filter_bidder_driver_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.listing.bidThreads.createV1(
            request: .init(
                action: .submit,
                listingId: "listing_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func counterV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.listing.bidThreads.counterV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func acceptV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.listing.bidThreads.acceptV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func denyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.listing.bidThreads.denyV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func withdrawV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.listing.bidThreads.withdrawV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func confirmAcceptV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.listing.bidThreads.confirmAcceptV1(
            bidThreadId: "bid_thread_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}