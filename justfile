set export
set dotenv-load

default:
  @just -l

make-market-mainnet:
  @echo "mainnet using NEAR_ACCOUNT_ID: ${NEAR_ACCOUNT_ID}"
  yarn make-market \
      --network=${NETWORK} \
      --nearAccountId=${NEAR_ACCOUNT_ID} \
      --tonicContractId=v1.orderbook.near \
      --marketId=$MARKET_ID \
      --assetName=near \
      --baseQuantity=1 \
      --spreadBps=50 \
      --orderDelayMs 60000


make-market-testnet:
  @echo "testnet using NEAR_ACCOUNT_ID: ${NEAR_ACCOUNT_ID}"
  yarn make-market \
      --network=testnet \
      --nearAccountId=${NEAR_ACCOUNT_ID} \
      --tonicContractId=$TONIC_CONTRACT_ID \
      --marketId=$MARKET_ID \
      --assetName=usn \
      --baseQuantity=10 \
      --spreadBps=3 \
      --orderDelayMs 5000

