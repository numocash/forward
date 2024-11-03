# Numo 🟩 

[![Fuzz Testing](https://github.com/Uniswap/uniswap-v3-core/actions/workflows/fuzz-testing.yml/badge.svg)](https://github.com/numotrade/numo/actions/workflows/fuzz-testing.yml)
[![npm version](https://img.shields.io/npm/v/@uniswap/v3-core/latest.svg)](https://www.npmjs.com/package/@numotrade/numo/v/latest)

<div align="center">
  <br />
  <a href="https://optimism.io"><img alt="Numo" src="./image/numo_readme.png" width=600></a>
  <br />
</div>

### A marketplace for options on ERC-20s.

Numo enables 24/7 option markets for leverage, income, and hedging. The smart contract suite is a modified fork of @primitivefinance's open source [RMM-01](https://github.com/primitivefinance/rmm) implementation and the [replicating market makers](https://arxiv.org/abs/2103.14769) paper that first proved any option strategy can be constructed using CFMMs.

## Liquidity Providers

> ⚠️ **WARNING:** This code has not yet been audited. Use at your own risk.

Liquidity providers on Numo earn sustainable yield from selling [european-style call options](https://en.wikipedia.org/wiki/European_option). As in traditional options markets, **sellers** earn a premium upfront. These premiums are paid by buyers who enjoy the *right but not obligation* to exercise the call option if it is in the money. To optimize the premiums earned, a batch auction can be implemented to match buyers and sellers. 

Numo deploys a `market` instance for each pair. Each `market` can handle any two arbitrary ERC-20 token and follows the standard naming conventions seen in traditional FX markets (`base`/`quote`).

## Setup

`forge install`

## Testing

`forge test -vvv`

## Coverage

`forge coverage --report lcov`

`cmd + shift + p -> Coverage Gutters: Display Coverage`


### Deployments by Chain

| Network  | Numo Smart Contracts 0.1.0                                                                                                          |                                                                                                |
| -------- | ----------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Celo | [0x82360b9a2076a09ea8abe2b3e11aed89de3a02d1](https://explorer.celo.org/mainnet/token/0x82360b9a2076a09ea8abe2b3e11aed89de3a02d1 )        |
| 