# Field Specifications1

## General Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Field Name            |consumer_id                                   |
| Parent Table          |consumers                                   |
| Alias(es)             |                                   |
| Specification Type    | [x] Unique                        |
|                       | [ ] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |ratings                                   |
| Description           |A unique number to  identify each consumer                                   |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Numeric                                   |
| Length                |10                                   |
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
| Field Name            |consumer_id                                 |
| Parent Table          |ratings                                  |
| Alias(es)             |                                   |
| Specification Type    | [] Unique                        |
|                       | [ ] Generic                       |
|                       | [x] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |ratings                                   |
| Description           |A number to indicate which consumer's rating for movies                                   |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Numeric                                   |
| Length                |10                                   |
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
| Field Name            |movie_title                                   |
| Parent Table          |movies                                   |
| Alias(es)             |movie_name                                   |
| Specification Type    | [ ] Unique                        |
|                       | [x] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |                                   |
| Shared By             |UI                                   |
| Description           |The name of each movie                                   |


## Physical Elements

| Field                 | Value                             |
|-----------------------|-----------------------------------|
| Data Type             |Alphanumeric                                  |
| Length                |50                                  |
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
| Parent Table          |consumers                                  |
| Alias(es)             |                                   |
| Specification Type    | [ ] Unique                        |
|                       | [x] Generic                       |
|                       | [ ] Replica                       |
|                       |                                   |
| Source Specification  |user home address                                   |
| Shared By             |                                   |
| Description           |the address detail where each consumer live                                   |


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

