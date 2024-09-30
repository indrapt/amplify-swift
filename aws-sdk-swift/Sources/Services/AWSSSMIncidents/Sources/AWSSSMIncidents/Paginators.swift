//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension SSMIncidentsClient {
    /// Paginate over `[GetResourcePoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourcePoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourcePoliciesOutput`
    public func getResourcePoliciesPaginated(input: GetResourcePoliciesInput) -> ClientRuntime.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput> {
        return ClientRuntime.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getResourcePolicies(input:))
    }
}

extension GetResourcePoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourcePoliciesInput {
        return GetResourcePoliciesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where OperationStackInput == GetResourcePoliciesInput, OperationStackOutput == GetResourcePoliciesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getResourcePoliciesPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.ResourcePolicy]`
    /// - Returns: `[SSMIncidentsClientTypes.ResourcePolicy]`
    public func resourcePolicies() async throws -> [SSMIncidentsClientTypes.ResourcePolicy] {
        return try await self.asyncCompactMap { item in item.resourcePolicies }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListIncidentFindingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIncidentFindingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIncidentFindingsOutput`
    public func listIncidentFindingsPaginated(input: ListIncidentFindingsInput) -> ClientRuntime.PaginatorSequence<ListIncidentFindingsInput, ListIncidentFindingsOutput> {
        return ClientRuntime.PaginatorSequence<ListIncidentFindingsInput, ListIncidentFindingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listIncidentFindings(input:))
    }
}

extension ListIncidentFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIncidentFindingsInput {
        return ListIncidentFindingsInput(
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListIncidentFindingsInput, OperationStackOutput == ListIncidentFindingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listIncidentFindingsPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.FindingSummary]`
    /// - Returns: `[SSMIncidentsClientTypes.FindingSummary]`
    public func findings() async throws -> [SSMIncidentsClientTypes.FindingSummary] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListIncidentRecordsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIncidentRecordsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIncidentRecordsOutput`
    public func listIncidentRecordsPaginated(input: ListIncidentRecordsInput) -> ClientRuntime.PaginatorSequence<ListIncidentRecordsInput, ListIncidentRecordsOutput> {
        return ClientRuntime.PaginatorSequence<ListIncidentRecordsInput, ListIncidentRecordsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listIncidentRecords(input:))
    }
}

extension ListIncidentRecordsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIncidentRecordsInput {
        return ListIncidentRecordsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListIncidentRecordsInput, OperationStackOutput == ListIncidentRecordsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listIncidentRecordsPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.IncidentRecordSummary]`
    /// - Returns: `[SSMIncidentsClientTypes.IncidentRecordSummary]`
    public func incidentRecordSummaries() async throws -> [SSMIncidentsClientTypes.IncidentRecordSummary] {
        return try await self.asyncCompactMap { item in item.incidentRecordSummaries }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListRelatedItemsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRelatedItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRelatedItemsOutput`
    public func listRelatedItemsPaginated(input: ListRelatedItemsInput) -> ClientRuntime.PaginatorSequence<ListRelatedItemsInput, ListRelatedItemsOutput> {
        return ClientRuntime.PaginatorSequence<ListRelatedItemsInput, ListRelatedItemsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRelatedItems(input:))
    }
}

extension ListRelatedItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRelatedItemsInput {
        return ListRelatedItemsInput(
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListRelatedItemsInput, OperationStackOutput == ListRelatedItemsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRelatedItemsPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.RelatedItem]`
    /// - Returns: `[SSMIncidentsClientTypes.RelatedItem]`
    public func relatedItems() async throws -> [SSMIncidentsClientTypes.RelatedItem] {
        return try await self.asyncCompactMap { item in item.relatedItems }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListReplicationSetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReplicationSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReplicationSetsOutput`
    public func listReplicationSetsPaginated(input: ListReplicationSetsInput) -> ClientRuntime.PaginatorSequence<ListReplicationSetsInput, ListReplicationSetsOutput> {
        return ClientRuntime.PaginatorSequence<ListReplicationSetsInput, ListReplicationSetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listReplicationSets(input:))
    }
}

extension ListReplicationSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReplicationSetsInput {
        return ListReplicationSetsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListReplicationSetsInput, OperationStackOutput == ListReplicationSetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listReplicationSetsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func replicationSetArns() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.replicationSetArns }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListResponsePlansOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResponsePlansInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResponsePlansOutput`
    public func listResponsePlansPaginated(input: ListResponsePlansInput) -> ClientRuntime.PaginatorSequence<ListResponsePlansInput, ListResponsePlansOutput> {
        return ClientRuntime.PaginatorSequence<ListResponsePlansInput, ListResponsePlansOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResponsePlans(input:))
    }
}

extension ListResponsePlansInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResponsePlansInput {
        return ListResponsePlansInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListResponsePlansInput, OperationStackOutput == ListResponsePlansOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResponsePlansPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.ResponsePlanSummary]`
    /// - Returns: `[SSMIncidentsClientTypes.ResponsePlanSummary]`
    public func responsePlanSummaries() async throws -> [SSMIncidentsClientTypes.ResponsePlanSummary] {
        return try await self.asyncCompactMap { item in item.responsePlanSummaries }
    }
}
extension SSMIncidentsClient {
    /// Paginate over `[ListTimelineEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTimelineEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTimelineEventsOutput`
    public func listTimelineEventsPaginated(input: ListTimelineEventsInput) -> ClientRuntime.PaginatorSequence<ListTimelineEventsInput, ListTimelineEventsOutput> {
        return ClientRuntime.PaginatorSequence<ListTimelineEventsInput, ListTimelineEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTimelineEvents(input:))
    }
}

extension ListTimelineEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTimelineEventsInput {
        return ListTimelineEventsInput(
            filters: self.filters,
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListTimelineEventsInput, OperationStackOutput == ListTimelineEventsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTimelineEventsPaginated`
    /// to access the nested member `[SSMIncidentsClientTypes.EventSummary]`
    /// - Returns: `[SSMIncidentsClientTypes.EventSummary]`
    public func eventSummaries() async throws -> [SSMIncidentsClientTypes.EventSummary] {
        return try await self.asyncCompactMap { item in item.eventSummaries }
    }
}
