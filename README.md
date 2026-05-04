# HealthTrust-FL Secure and Compliant Federated Learning

## Project Overview
HealthTrust-FL is a minimal, secure federated learning system for CKD prediction.
Each client trains locally, encrypts data (CKKS), and stores model weights on Ethereum (Ganache).
A global model aggregates client outputs and evaluates performance.

## Architecture Diagram (ASCII)
```
[ EHR CSV ]
     |
[ Preprocessing ]
     |
[ CKKS Encrypt ]
     |
[ Split into Clients ]
    / \
[Client1] [Client2]
    |          |
[Local XGBoost Training]
    |          |
[Store Weights on Blockchain]
    \          /
   [Global Aggregation]
        |
   [CKD Prediction]
```

## Installation
1. Create and activate a virtual environment:
```
python -m venv .venv
.venv\Scripts\activate
```

2. Install dependencies:
```
pip install -r backend/requirements.txt
```

## Ganache Setup
1. Start Ganache GUI or CLI on `http://127.0.0.1:7545`.
2. Ensure accounts are unlocked.

## Smart Contract Deployment
1. Install Truffle:
```
npm install -g truffle
```

2. Compile and deploy:
```
cd blockchain
truffle compile
truffle migrate --network development
```

3. Copy deployed contract address from migration output and set:
```
set FL_CONTRACT_ADDRESS=0xYourContractAddress
```

## Run Instructions
1. Ensure Ganache is running and contract is deployed.
2. Place your dataset in `dataset/ehr.csv`.
3. Run backend pipeline:
```
cd backend
python main.py
```

4. Run Streamlit UI:
```
cd frontend
streamlit run app.py
```

## Output Screens
- Client1 Accuracy
- Client2 Accuracy
- Global Accuracy
- Accuracy Comparison Bar Chart
- Computation Time Comparison Bar Chart
- Final CKD Prediction
