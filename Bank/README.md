# Bank kata

### Specification

## Requirements

- The code is accessible via a REPL like IRB or PRY
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).
- Acceptance criteria

```
Given a client makes a deposit of 1000 on 10-01-2012 AND a deposit of 2000 on 13-01-2012 AND a withdrawal of 500 on 14-01-2012 WHEN she prints her bank statement THEN she would see

| date | credit | debit | balance |
| --- | --- | --- | --- |
|14/01/2012 |   | 500.00 | 2500.00 |
|13/01/2012 | |2000.00 | 3000.00 |
|10/01/2012 | |1000.00 | 1000.00 |

```
### Technologies used

- Ruby 2.4.1
- bundler

### Testing
- RSpec
- rubocop
- simplecov
