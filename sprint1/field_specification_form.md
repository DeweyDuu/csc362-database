# Field Specifications1

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |category_id                                   |
| Parent Table          |Categories                                  |
| Alias(es)             |                                   |
| Specification Type    | [x] Unique                        |
|                       | [ ] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |Products                                   |
| Description           |A unique number to represent a specific category                 |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Numeric                                   |
| Length                |                                 |
| Decimal Places        |0                                   |
| Character Support     | [ ] Letters (A-Z)                 |
|                       | [x] Numbers (0-9)                 |
|                       | [ ] Keyboard (.,/$#%)             |
|                       | [ ] Special (©®™Σπ)               |


## Logical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Key Type              | [ ] Non                           |
|                       | [x] Primary                       |   
|                       | [ ] Foreign                       |
|                       | [ ] Alternate                     |
|                       |                                   |
| Key Structure         | [x] Simple                        |
|                       | [ ] Composite                     |
|                       |                                   |
| Uniqueness            | [ ] Non-unique                    |
|                       | [x] Unique                        |
|                       |                                   |
| Null Support          | [ ] Nulls OK                      |
|                       | [x] No nulls                      |
|                       |                                   |
| Values Entered By     | [ ] User                          |
|                       | [x] System                        |
|                       |                                   |
| Required Value        | [ ] No                            |
|                       | [x] Yes                           |
|                       |                                   |
| Range of Values       |                                   |
| Edit Rule             | [ ] Enter now, edits allowed      |
|                       | [x] Enter now, edits not allowed  |
|                       | [ ] Enter later, edits allowed    |
|                       | [ ] Enter later, edits not allowed|
|                       | [ ] Not determined at this time   |

## Notes

# Field Specifications2

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |category_id                                 |
| Parent Table          |Products                                  |
| Alias(es)             |                        |
| Specification Type    | [] Unique                        |
|                       | [ ] Generic                       |
|                       | [x] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |Categories                                   |
| Description           |A number to indicate which category a product belongs to                              |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Numeric                                   |
| Length                |                                   |
| Decimal Places        |0                                   |
| Character Support     | [ ] Letters (A-Z)                 |
|                       | [x] Numbers (0-9)                 |
|                       | [ ] Keyboard (.,/$#%)             |
|                       | [ ] Special (©®™Σπ)               |


## Logical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Key Type              | [ ] Non                           |
|                       | [ ] Primary                       |   
|                       | [x] Foreign                       |
|                       | [ ] Alternate                     |
|                       |                                   |
| Key Structure         | [x] Simple                        |
|                       | [ ] Composite                     |
|                       |                                   |
| Uniqueness            | [x] Non-unique                    |
|                       | [ ] Unique                        |
|                       |                                   |
| Null Support          | [ ] Nulls OK                      |
|                       | [x] No nulls                      |
|                       |                                   |
| Values Entered By     | [x] User                          |
|                       | [ ] System                        |
|                       |                                   |
| Required Value        | [ ] No                            |
|                       | [x] Yes                           |
|                       |                                   |
| Range of Values       |                                   |
| Edit Rule             | [ ] Enter now, edits allowed      |
|                       | [x] Enter now, edits not allowed  |
|                       | [ ] Enter later, edits allowed    |
|                       | [ ] Enter later, edits not allowed|
|                       | [ ] Not determined at this time   |

## Notes

# Field Specifications3

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |product_id                                   |
| Parent Table          |Products                                  |
| Alias(es)             |                                   |
| Specification Type    | [x] Unique                        |
|                       | [ ] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |Inventory, Warranties, ProductDiscounts, ProductStatusHistory, PreOrders, OrderItems                                   |
| Description           |A unique number to represent a specific product                |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Numeric                                   |
| Length                |                                 |
| Decimal Places        |0                                   |
| Character Support     | [ ] Letters (A-Z)                 |
|                       | [x] Numbers (0-9)                 |
|                       | [ ] Keyboard (.,/$#%)             |
|                       | [ ] Special (©®™Σπ)               |


## Logical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Key Type              | [ ] Non                           |
|                       | [x] Primary                       |   
|                       | [ ] Foreign                       |
|                       | [ ] Alternate                     |
|                       |                                   |
| Key Structure         | [x] Simple                        |
|                       | [ ] Composite                     |
|                       |                                   |
| Uniqueness            | [ ] Non-unique                    |
|                       | [x] Unique                        |
|                       |                                   |
| Null Support          | [ ] Nulls OK                      |
|                       | [x] No nulls                      |
|                       |                                   |
| Values Entered By     | [x] User                          |
|                       | [] System                        |
|                       |                                   |
| Required Value        | [ ] No                            |
|                       | [x] Yes                           |
|                       |                                   |
| Range of Values       |                                   |
| Edit Rule             | [ ] Enter now, edits allowed      |
|                       | [x] Enter now, edits not allowed  |
|                       | [ ] Enter later, edits allowed    |
|                       | [ ] Enter later, edits not allowed|
|                       | [ ] Not determined at this time   |

## Notes

# Field Specifications4

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |address                                |
| Parent Table          |Suppliers                                  |
| Alias(es)             |                                   |
| Specification Type    | [ ] Unique                        |
|                       | [x] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |supplier's address                                   |
| Shared By             |                                   |
| Description           |the address detail where each suppliers is                                   |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Alphanumeric                                   |
| Length                |100                                  |
| Decimal Places        |0                                   |
| Character Support     | [x] Letters (A-Z)                 |
|                       | [x] Numbers (0-9)                 |
|                       | [ ] Keyboard (.,/$#%)             |
|                       | [ ] Special (©®™Σπ)               |


## Logical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Key Type              | [x] Non                           |
|                       | [ ] Primary                       |   
|                       | [ ] Foreign                       |
|                       | [ ] Alternate                     |
|                       |                                   |
| Key Structure         | [x] Simple                        |
|                       | [ ] Composite                     |
|                       |                                   |
| Uniqueness            | [x] Non-unique                    |
|                       | [ ] Unique                        |
|                       |                                   |
| Null Support          | [ ] Nulls OK                      |
|                       | [x] No nulls                      |
|                       |                                   |
| Values Entered By     | [x] User                          |
|                       | [ ] System                        |
|                       |                                   |
| Required Value        | [ ] No                            |
|                       | [x] Yes                           |
|                       |                                   |
| Range of Values       |                                   |
| Edit Rule             | [x] Enter now, edits allowed      |
|                       | [ ] Enter now, edits not allowed  |
|                       | [ ] Enter later, edits allowed    |
|                       | [ ] Enter later, edits not allowed|
|                       | [ ] Not determined at this time   |

## Notes

# Field Specifications5

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |reoder_level                                |
| Parent Table          |Inventory                                  |
| Alias(es)             |                                   |
| Specification Type    | [ ] Unique                        |
|                       | [x] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |the amount of orders that is from this inventory                                   |
| Shared By             |                                   |
| Description           |describe the popularity of inventory and the reoder situation                                 |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Alphanumeric                                   |
| Length                |100                                  |
| Decimal Places        |0                                   |
| Character Support     | [ ] Letters (A-Z)                 |
|                       | [x] Numbers (0-9)                 |
|                       | [ ] Keyboard (.,/$#%)             |
|                       | [ ] Special (©®™Σπ)               |


## Logical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Key Type              | [x] Non                           |
|                       | [ ] Primary                       |   
|                       | [ ] Foreign                       |
|                       | [ ] Alternate                     |
|                       |                                   |
| Key Structure         | [x] Simple                        |
|                       | [ ] Composite                     |
|                       |                                   |
| Uniqueness            | [x] Non-unique                    |
|                       | [ ] Unique                        |
|                       |                                   |
| Null Support          | [x] Nulls OK                      |
|                       | [ ] No nulls                      |
|                       |                                   |
| Values Entered By     | [x] User                          |
|                       | [ ] System                        |
|                       |                                   |
| Required Value        | [ ] No                            |
|                       | [x] Yes                           |
|                       |                                   |
| Range of Values       |                                   |
| Edit Rule             | [x] Enter now, edits allowed      |
|                       | [ ] Enter now, edits not allowed  |
|                       | [ ] Enter later, edits allowed    |
|                       | [ ] Enter later, edits not allowed|
|                       | [ ] Not determined at this time   |

## Notes
