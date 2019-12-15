# gcc-c++ binaries for AWS Lambda

Layers for AWS Lambda that allow your functions to use `gcc` and `c++` binaries.

## Version ARNs for Amazon Linux 2 runtimes (`nodejs10.x`, `nodejs12.x`, `python3.8`, `java11`)

| gcc version | ARN |
| --- | --- |
| 7.3.1 | `arn:aws:lambda:${AWS::Region}:553035198032:layer:gcc-lambda2:1` |

## Version ARNs for all other runtimes

| gcc version | ARN |
| --- | --- |
| 7.2.1 | `arn:aws:lambda:${AWS::Region}:553035198032:layer:gcc72-lambda1:1` |
| 4.8.5 | `arn:aws:lambda:${AWS::Region}:553035198032:layer:gcc48-lambda1:1` |
