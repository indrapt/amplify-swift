//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension SSMContactsClient {
    /// Paginate over `[ListContactChannelsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactChannelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactChannelsOutput`
    public func listContactChannelsPaginated(input: ListContactChannelsInput) -> ClientRuntime.PaginatorSequence<ListContactChannelsInput, ListContactChannelsOutput> {
        return ClientRuntime.PaginatorSequence<ListContactChannelsInput, ListContactChannelsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listContactChannels(input:))
    }
}

extension ListContactChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactChannelsInput {
        return ListContactChannelsInput(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListContactChannelsInput, OperationStackOutput == ListContactChannelsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listContactChannelsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.ContactChannel]`
    /// - Returns: `[SSMContactsClientTypes.ContactChannel]`
    public func contactChannels() async throws -> [SSMContactsClientTypes.ContactChannel] {
        return try await self.asyncCompactMap { item in item.contactChannels }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListContactsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactsOutput`
    public func listContactsPaginated(input: ListContactsInput) -> ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutput> {
        return ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listContacts(input:))
    }
}

extension ListContactsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactsInput {
        return ListContactsInput(
            aliasPrefix: self.aliasPrefix,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )}
}

extension PaginatorSequence where OperationStackInput == ListContactsInput, OperationStackOutput == ListContactsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listContactsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Contact]`
    /// - Returns: `[SSMContactsClientTypes.Contact]`
    public func contacts() async throws -> [SSMContactsClientTypes.Contact] {
        return try await self.asyncCompactMap { item in item.contacts }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListEngagementsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEngagementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEngagementsOutput`
    public func listEngagementsPaginated(input: ListEngagementsInput) -> ClientRuntime.PaginatorSequence<ListEngagementsInput, ListEngagementsOutput> {
        return ClientRuntime.PaginatorSequence<ListEngagementsInput, ListEngagementsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEngagements(input:))
    }
}

extension ListEngagementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEngagementsInput {
        return ListEngagementsInput(
            incidentId: self.incidentId,
            maxResults: self.maxResults,
            nextToken: token,
            timeRangeValue: self.timeRangeValue
        )}
}

extension PaginatorSequence where OperationStackInput == ListEngagementsInput, OperationStackOutput == ListEngagementsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEngagementsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Engagement]`
    /// - Returns: `[SSMContactsClientTypes.Engagement]`
    public func engagements() async throws -> [SSMContactsClientTypes.Engagement] {
        return try await self.asyncCompactMap { item in item.engagements }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPageReceiptsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPageReceiptsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPageReceiptsOutput`
    public func listPageReceiptsPaginated(input: ListPageReceiptsInput) -> ClientRuntime.PaginatorSequence<ListPageReceiptsInput, ListPageReceiptsOutput> {
        return ClientRuntime.PaginatorSequence<ListPageReceiptsInput, ListPageReceiptsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPageReceipts(input:))
    }
}

extension ListPageReceiptsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPageReceiptsInput {
        return ListPageReceiptsInput(
            maxResults: self.maxResults,
            nextToken: token,
            pageId: self.pageId
        )}
}

extension PaginatorSequence where OperationStackInput == ListPageReceiptsInput, OperationStackOutput == ListPageReceiptsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPageReceiptsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Receipt]`
    /// - Returns: `[SSMContactsClientTypes.Receipt]`
    public func receipts() async throws -> [SSMContactsClientTypes.Receipt] {
        return try await self.asyncCompactMap { item in item.receipts }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPageResolutionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPageResolutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPageResolutionsOutput`
    public func listPageResolutionsPaginated(input: ListPageResolutionsInput) -> ClientRuntime.PaginatorSequence<ListPageResolutionsInput, ListPageResolutionsOutput> {
        return ClientRuntime.PaginatorSequence<ListPageResolutionsInput, ListPageResolutionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPageResolutions(input:))
    }
}

extension ListPageResolutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPageResolutionsInput {
        return ListPageResolutionsInput(
            nextToken: token,
            pageId: self.pageId
        )}
}

extension PaginatorSequence where OperationStackInput == ListPageResolutionsInput, OperationStackOutput == ListPageResolutionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPageResolutionsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.ResolutionContact]`
    /// - Returns: `[SSMContactsClientTypes.ResolutionContact]`
    public func pageResolutions() async throws -> [SSMContactsClientTypes.ResolutionContact] {
        return try await self.asyncCompactMap { item in item.pageResolutions }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPagesByContactOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPagesByContactInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPagesByContactOutput`
    public func listPagesByContactPaginated(input: ListPagesByContactInput) -> ClientRuntime.PaginatorSequence<ListPagesByContactInput, ListPagesByContactOutput> {
        return ClientRuntime.PaginatorSequence<ListPagesByContactInput, ListPagesByContactOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPagesByContact(input:))
    }
}

extension ListPagesByContactInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPagesByContactInput {
        return ListPagesByContactInput(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListPagesByContactInput, OperationStackOutput == ListPagesByContactOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPagesByContactPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Page]`
    /// - Returns: `[SSMContactsClientTypes.Page]`
    public func pages() async throws -> [SSMContactsClientTypes.Page] {
        return try await self.asyncCompactMap { item in item.pages }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPagesByEngagementOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPagesByEngagementInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPagesByEngagementOutput`
    public func listPagesByEngagementPaginated(input: ListPagesByEngagementInput) -> ClientRuntime.PaginatorSequence<ListPagesByEngagementInput, ListPagesByEngagementOutput> {
        return ClientRuntime.PaginatorSequence<ListPagesByEngagementInput, ListPagesByEngagementOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPagesByEngagement(input:))
    }
}

extension ListPagesByEngagementInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPagesByEngagementInput {
        return ListPagesByEngagementInput(
            engagementId: self.engagementId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListPagesByEngagementInput, OperationStackOutput == ListPagesByEngagementOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPagesByEngagementPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Page]`
    /// - Returns: `[SSMContactsClientTypes.Page]`
    public func pages() async throws -> [SSMContactsClientTypes.Page] {
        return try await self.asyncCompactMap { item in item.pages }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPreviewRotationShiftsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPreviewRotationShiftsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPreviewRotationShiftsOutput`
    public func listPreviewRotationShiftsPaginated(input: ListPreviewRotationShiftsInput) -> ClientRuntime.PaginatorSequence<ListPreviewRotationShiftsInput, ListPreviewRotationShiftsOutput> {
        return ClientRuntime.PaginatorSequence<ListPreviewRotationShiftsInput, ListPreviewRotationShiftsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPreviewRotationShifts(input:))
    }
}

extension ListPreviewRotationShiftsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPreviewRotationShiftsInput {
        return ListPreviewRotationShiftsInput(
            endTime: self.endTime,
            maxResults: self.maxResults,
            members: self.members,
            nextToken: token,
            overrides: self.overrides,
            recurrence: self.recurrence,
            rotationStartTime: self.rotationStartTime,
            startTime: self.startTime,
            timeZoneId: self.timeZoneId
        )}
}

extension PaginatorSequence where OperationStackInput == ListPreviewRotationShiftsInput, OperationStackOutput == ListPreviewRotationShiftsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPreviewRotationShiftsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.RotationShift]`
    /// - Returns: `[SSMContactsClientTypes.RotationShift]`
    public func rotationShifts() async throws -> [SSMContactsClientTypes.RotationShift] {
        return try await self.asyncCompactMap { item in item.rotationShifts }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListRotationOverridesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRotationOverridesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRotationOverridesOutput`
    public func listRotationOverridesPaginated(input: ListRotationOverridesInput) -> ClientRuntime.PaginatorSequence<ListRotationOverridesInput, ListRotationOverridesOutput> {
        return ClientRuntime.PaginatorSequence<ListRotationOverridesInput, ListRotationOverridesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRotationOverrides(input:))
    }
}

extension ListRotationOverridesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRotationOverridesInput {
        return ListRotationOverridesInput(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            rotationId: self.rotationId,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where OperationStackInput == ListRotationOverridesInput, OperationStackOutput == ListRotationOverridesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRotationOverridesPaginated`
    /// to access the nested member `[SSMContactsClientTypes.RotationOverride]`
    /// - Returns: `[SSMContactsClientTypes.RotationOverride]`
    public func rotationOverrides() async throws -> [SSMContactsClientTypes.RotationOverride] {
        return try await self.asyncCompactMap { item in item.rotationOverrides }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListRotationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRotationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRotationsOutput`
    public func listRotationsPaginated(input: ListRotationsInput) -> ClientRuntime.PaginatorSequence<ListRotationsInput, ListRotationsOutput> {
        return ClientRuntime.PaginatorSequence<ListRotationsInput, ListRotationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRotations(input:))
    }
}

extension ListRotationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRotationsInput {
        return ListRotationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            rotationNamePrefix: self.rotationNamePrefix
        )}
}

extension PaginatorSequence where OperationStackInput == ListRotationsInput, OperationStackOutput == ListRotationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRotationsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Rotation]`
    /// - Returns: `[SSMContactsClientTypes.Rotation]`
    public func rotations() async throws -> [SSMContactsClientTypes.Rotation] {
        return try await self.asyncCompactMap { item in item.rotations }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListRotationShiftsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRotationShiftsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRotationShiftsOutput`
    public func listRotationShiftsPaginated(input: ListRotationShiftsInput) -> ClientRuntime.PaginatorSequence<ListRotationShiftsInput, ListRotationShiftsOutput> {
        return ClientRuntime.PaginatorSequence<ListRotationShiftsInput, ListRotationShiftsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRotationShifts(input:))
    }
}

extension ListRotationShiftsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRotationShiftsInput {
        return ListRotationShiftsInput(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            rotationId: self.rotationId,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where OperationStackInput == ListRotationShiftsInput, OperationStackOutput == ListRotationShiftsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRotationShiftsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.RotationShift]`
    /// - Returns: `[SSMContactsClientTypes.RotationShift]`
    public func rotationShifts() async throws -> [SSMContactsClientTypes.RotationShift] {
        return try await self.asyncCompactMap { item in item.rotationShifts }
    }
}
