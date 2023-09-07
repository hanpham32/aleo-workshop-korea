#!/bin/bash

RECORD="{
  owner: aleo1xek7k85p38ldmwywydvyqzgp06hsdvzmz7yke2fn9w37jffkyq9qtw0v2l.private,
  microcredits: 35000000u64.private,
  _nonce: 7992387330129357848899882089683912482710378788821678330044859170133065367210group.public
}"

PRIVATEKEY="APrivateKey1zkp6weq9Xqwdka86iET1QdUQ1P7BesVRm5bGEK1FU5P1PQL"
APPNAME="han_in_korea"

snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 10000 --record "${RECORD}"

~
~