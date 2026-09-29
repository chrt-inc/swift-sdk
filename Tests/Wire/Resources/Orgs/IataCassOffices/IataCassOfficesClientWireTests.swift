import Foundation
import Testing
import Chrt

@Suite("IataCassOfficesClient Wire Tests") struct IataCassOfficesClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.orgs.iataCassOffices.archiveV1(
            iataCassOfficeId: "iata_cass_office_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "company_name": "company_name",
                      "contact_email_address": "contact_email_address",
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "country_code": "country_code",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "iata_cargo_agent_cass_address": "iata_cargo_agent_cass_address",
                      "iata_cargo_agent_numeric_code": "iata_cargo_agent_numeric_code",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "schema_version": 1,
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IataCassOfficeListRes(
            items: [
                IataCassOffice1(
                    id: "_id",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    companyName: "company_name",
                    contactEmailAddress: "contact_email_address",
                    contactFirstName: "contact_first_name",
                    contactLastName: "contact_last_name",
                    countryCode: "country_code",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    iataCargoAgentCassAddress: "iata_cargo_agent_cass_address",
                    iataCargoAgentNumericCode: "iata_cargo_agent_numeric_code",
                    name: "name",
                    ownedByOrgId: "owned_by_org_id",
                    ownedByUserId: "owned_by_user_id",
                    schemaVersion: 1,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.iataCassOffices.listV1(
            filterArchived: true,
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "company_name": "company_name",
                  "contact_email_address": "contact_email_address",
                  "contact_first_name": "contact_first_name",
                  "contact_last_name": "contact_last_name",
                  "country_code": "country_code",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "iata_cargo_agent_cass_address": "iata_cargo_agent_cass_address",
                  "iata_cargo_agent_numeric_code": "iata_cargo_agent_numeric_code",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IataCassOffice1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            companyName: "company_name",
            contactEmailAddress: "contact_email_address",
            contactFirstName: "contact_first_name",
            contactLastName: "contact_last_name",
            countryCode: "country_code",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            iataCargoAgentCassAddress: "iata_cargo_agent_cass_address",
            iataCargoAgentNumericCode: "iata_cargo_agent_numeric_code",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.orgs.iataCassOffices.updateV1(
            iataCassOfficeId: "iata_cass_office_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "company_name": "company_name",
                  "contact_email_address": "contact_email_address",
                  "contact_first_name": "contact_first_name",
                  "contact_last_name": "contact_last_name",
                  "country_code": "country_code",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "iata_cargo_agent_cass_address": "iata_cargo_agent_cass_address",
                  "iata_cargo_agent_numeric_code": "iata_cargo_agent_numeric_code",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IataCassOffice1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            companyName: "company_name",
            contactEmailAddress: "contact_email_address",
            contactFirstName: "contact_first_name",
            contactLastName: "contact_last_name",
            countryCode: "country_code",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            iataCargoAgentCassAddress: "iata_cargo_agent_cass_address",
            iataCargoAgentNumericCode: "iata_cargo_agent_numeric_code",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.orgs.iataCassOffices.getV1(
            iataCassOfficeId: "iata_cass_office_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}