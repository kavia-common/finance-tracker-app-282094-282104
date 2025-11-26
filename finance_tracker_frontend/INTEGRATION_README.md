# Finance Tracker Frontend Integration

## Environment

Create a `.env` file next to this README with:
```
API_BASE_URL=http://localhost:3001
```

Notes:
- Android emulator uses `10.0.2.2` to reach host: `API_BASE_URL=http://10.0.2.2:3001`
- iOS simulator can use `http://localhost:3001`

## API Client

Ensure your API client reads `API_BASE_URL` from `.env` and appends endpoint paths, e.g.:
- `POST /auth/login`
- `GET /auth/me`
- `GET /transactions`, `POST /transactions` etc.

Include `Authorization: Bearer <access_token>` header after login.

## Models

Align with backend OpenAPI (`../finance_tracker_backend/interfaces/openapi.json`):
- Token { access_token: string, token_type: string = "bearer" }
- TransactionCreate, TransactionRead, TransactionUpdate
- Summary, ByCategoryItem, TrendPoint

If backend schemas change, regenerate OpenAPI (see backend README) and update client models accordingly.
