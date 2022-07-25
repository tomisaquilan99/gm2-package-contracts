// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
// Invalid address sent. Needed a not zero address
error ZeroAddressNotSupported();
// Invalid operation. Needed _defaultImagePath to be set
error DefaultImagePathRequired();
// Invalid address sent. It doesn't implements the require interface
// @param addressSent sent address.
// @param interfaceRequired required interface.
error InterfaceIsNotImplemented(address addressSent, bytes4 interfaceRequired);
// Invalid operation. Can't set imagePath to token without baseAttributes'
// @param tokenId sent tokenId.
// @param imagePath sent imagePath.
error CannotSetImageWithoutBaseAttributes(uint256 tokenId, string imagePath);
// Invalid operation. Token already has base attributes set.
// @param tokenId sent tokenId.
error AlreadyHaveBaseAttributes(uint256 tokenId);
// Invalid operation. Method is not supported yet.
// @param method method that wants to be executed.
error MethodNotSupported(string method);
