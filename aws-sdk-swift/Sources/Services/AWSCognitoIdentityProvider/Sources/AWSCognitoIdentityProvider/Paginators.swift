//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CognitoIdentityProviderClient {
    /// Paginate over `[AdminListGroupsForUserOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[AdminListGroupsForUserInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `AdminListGroupsForUserOutput`
    public func adminListGroupsForUserPaginated(input: AdminListGroupsForUserInput) -> ClientRuntime.PaginatorSequence<AdminListGroupsForUserInput, AdminListGroupsForUserOutput> {
        return ClientRuntime.PaginatorSequence<AdminListGroupsForUserInput, AdminListGroupsForUserOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.adminListGroupsForUser(input:))
    }
}

extension AdminListGroupsForUserInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> AdminListGroupsForUserInput {
        return AdminListGroupsForUserInput(
            limit: self.limit,
            nextToken: token,
            userPoolId: self.userPoolId,
            username: self.username
        )}
}

extension PaginatorSequence where OperationStackInput == AdminListGroupsForUserInput, OperationStackOutput == AdminListGroupsForUserOutput {
    /// This paginator transforms the `AsyncSequence` returned by `adminListGroupsForUserPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.GroupType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.GroupType]`
    public func groups() async throws -> [CognitoIdentityProviderClientTypes.GroupType] {
        return try await self.asyncCompactMap { item in item.groups }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[AdminListUserAuthEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[AdminListUserAuthEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `AdminListUserAuthEventsOutput`
    public func adminListUserAuthEventsPaginated(input: AdminListUserAuthEventsInput) -> ClientRuntime.PaginatorSequence<AdminListUserAuthEventsInput, AdminListUserAuthEventsOutput> {
        return ClientRuntime.PaginatorSequence<AdminListUserAuthEventsInput, AdminListUserAuthEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.adminListUserAuthEvents(input:))
    }
}

extension AdminListUserAuthEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> AdminListUserAuthEventsInput {
        return AdminListUserAuthEventsInput(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId,
            username: self.username
        )}
}

extension PaginatorSequence where OperationStackInput == AdminListUserAuthEventsInput, OperationStackOutput == AdminListUserAuthEventsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `adminListUserAuthEventsPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.AuthEventType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.AuthEventType]`
    public func authEvents() async throws -> [CognitoIdentityProviderClientTypes.AuthEventType] {
        return try await self.asyncCompactMap { item in item.authEvents }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupsOutput`
    public func listGroupsPaginated(input: ListGroupsInput) -> ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGroups(input:))
    }
}

extension ListGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsInput {
        return ListGroupsInput(
            limit: self.limit,
            nextToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListGroupsInput, OperationStackOutput == ListGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGroupsPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.GroupType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.GroupType]`
    public func groups() async throws -> [CognitoIdentityProviderClientTypes.GroupType] {
        return try await self.asyncCompactMap { item in item.groups }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListIdentityProvidersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIdentityProvidersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIdentityProvidersOutput`
    public func listIdentityProvidersPaginated(input: ListIdentityProvidersInput) -> ClientRuntime.PaginatorSequence<ListIdentityProvidersInput, ListIdentityProvidersOutput> {
        return ClientRuntime.PaginatorSequence<ListIdentityProvidersInput, ListIdentityProvidersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listIdentityProviders(input:))
    }
}

extension ListIdentityProvidersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIdentityProvidersInput {
        return ListIdentityProvidersInput(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListIdentityProvidersInput, OperationStackOutput == ListIdentityProvidersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listIdentityProvidersPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.ProviderDescription]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.ProviderDescription]`
    public func providers() async throws -> [CognitoIdentityProviderClientTypes.ProviderDescription] {
        return try await self.asyncCompactMap { item in item.providers }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListResourceServersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceServersOutput`
    public func listResourceServersPaginated(input: ListResourceServersInput) -> ClientRuntime.PaginatorSequence<ListResourceServersInput, ListResourceServersOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceServersInput, ListResourceServersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourceServers(input:))
    }
}

extension ListResourceServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceServersInput {
        return ListResourceServersInput(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListResourceServersInput, OperationStackOutput == ListResourceServersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResourceServersPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.ResourceServerType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.ResourceServerType]`
    public func resourceServers() async throws -> [CognitoIdentityProviderClientTypes.ResourceServerType] {
        return try await self.asyncCompactMap { item in item.resourceServers }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListUserPoolClientsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUserPoolClientsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUserPoolClientsOutput`
    public func listUserPoolClientsPaginated(input: ListUserPoolClientsInput) -> ClientRuntime.PaginatorSequence<ListUserPoolClientsInput, ListUserPoolClientsOutput> {
        return ClientRuntime.PaginatorSequence<ListUserPoolClientsInput, ListUserPoolClientsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listUserPoolClients(input:))
    }
}

extension ListUserPoolClientsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUserPoolClientsInput {
        return ListUserPoolClientsInput(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListUserPoolClientsInput, OperationStackOutput == ListUserPoolClientsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listUserPoolClientsPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.UserPoolClientDescription]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.UserPoolClientDescription]`
    public func userPoolClients() async throws -> [CognitoIdentityProviderClientTypes.UserPoolClientDescription] {
        return try await self.asyncCompactMap { item in item.userPoolClients }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListUserPoolsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUserPoolsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUserPoolsOutput`
    public func listUserPoolsPaginated(input: ListUserPoolsInput) -> ClientRuntime.PaginatorSequence<ListUserPoolsInput, ListUserPoolsOutput> {
        return ClientRuntime.PaginatorSequence<ListUserPoolsInput, ListUserPoolsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listUserPools(input:))
    }
}

extension ListUserPoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUserPoolsInput {
        return ListUserPoolsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListUserPoolsInput, OperationStackOutput == ListUserPoolsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listUserPoolsPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.UserPoolDescriptionType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.UserPoolDescriptionType]`
    public func userPools() async throws -> [CognitoIdentityProviderClientTypes.UserPoolDescriptionType] {
        return try await self.asyncCompactMap { item in item.userPools }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListUsersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUsersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUsersOutput`
    public func listUsersPaginated(input: ListUsersInput) -> ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutput> {
        return ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutput>(input: input, inputKey: \.paginationToken, outputKey: \.paginationToken, paginationFunction: self.listUsers(input:))
    }
}

extension ListUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUsersInput {
        return ListUsersInput(
            attributesToGet: self.attributesToGet,
            filter: self.filter,
            limit: self.limit,
            paginationToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListUsersInput, OperationStackOutput == ListUsersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listUsersPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.UserType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.UserType]`
    public func users() async throws -> [CognitoIdentityProviderClientTypes.UserType] {
        return try await self.asyncCompactMap { item in item.users }
    }
}
extension CognitoIdentityProviderClient {
    /// Paginate over `[ListUsersInGroupOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUsersInGroupInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUsersInGroupOutput`
    public func listUsersInGroupPaginated(input: ListUsersInGroupInput) -> ClientRuntime.PaginatorSequence<ListUsersInGroupInput, ListUsersInGroupOutput> {
        return ClientRuntime.PaginatorSequence<ListUsersInGroupInput, ListUsersInGroupOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listUsersInGroup(input:))
    }
}

extension ListUsersInGroupInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUsersInGroupInput {
        return ListUsersInGroupInput(
            groupName: self.groupName,
            limit: self.limit,
            nextToken: token,
            userPoolId: self.userPoolId
        )}
}

extension PaginatorSequence where OperationStackInput == ListUsersInGroupInput, OperationStackOutput == ListUsersInGroupOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listUsersInGroupPaginated`
    /// to access the nested member `[CognitoIdentityProviderClientTypes.UserType]`
    /// - Returns: `[CognitoIdentityProviderClientTypes.UserType]`
    public func users() async throws -> [CognitoIdentityProviderClientTypes.UserType] {
        return try await self.asyncCompactMap { item in item.users }
    }
}
