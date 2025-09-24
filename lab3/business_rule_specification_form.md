# Business Rule Specifications 1

## Rule Information

| Feature           | Value                     |
|-------------------|---------------------------|
| Rule Statement    |Every customer must have a delivery address.                      |
| Constraint        |Customer info won't be added if there's no address.                           |
| Type              | [x] Database Oriented     |
|                   | [ ] Application Oriented  |
|                   |                           |
| Category          | [x] Field Specific        |
|                   | [ ] Relationship Specific |
|                   |                           |
| Test On           | [x] Insert                |
|                   | [ ] Delete                |
|                   | [x] Update                |


## Structures Affected

| Feature           | Value                     |
|-------------------|---------------------------|
| Field Names       |address_id,city,state,zip_code.                           |
| Table Names       |Customer,Address                           |


## Field Elements Affected
Mark each element which is affected by this rule.

### Physical Elements
- [ ] Data Type
- [ ] Length
- [ ] Character Support

### Logical Elements
- [ ] Key Type
- [ ] Key Structure
- [ ] Uniqueness
- [X] Null Support
- [ ] Values Entered By
- [ ] Range of Values
- [ ] Edit Rule


## Relationship Characteristics Affected
- [ ] Deletion rule
- [X] Type of participation
- [ ] Degree of participation

    
## Action Taken
List changes made to database structure or application in order to implement this rule.

Make the address_id in customer table to not null.


## Notes

# Business Rule Specifications 2

## Rule Information

| Feature           | Value                     |
|-------------------|---------------------------|
| Rule Statement    |Never sells a rug at a loss unless it has been in his inventory for over two years                      |
| Constraint        |The profits of saling a rug will be positive unless after 2 years.                           |
| Type              | [ ] Database Oriented     |
|                   | [x] Application Oriented  |
|                   |                           |
| Category          | [x] Field Specific        |
|                   | [x] Relationship Specific |
|                   |                           |
| Test On           | [x] Insert                |
|                   | [ ] Delete                |
|                   | [x] Update                |


## Structures Affected

| Feature           | Value                     |
|-------------------|---------------------------|
| Field Names       |sale_date,sale_price,original_cost,date_acuired                           |
| Table Names       |Rug,Sale                           |


## Field Elements Affected
Mark each element which is affected by this rule.

### Physical Elements
- [ ] Data Type
- [ ] Length
- [ ] Character Support

### Logical Elements
- [ ] Key Type
- [ ] Key Structure
- [ ] Uniqueness
- [ ] Null Support
- [ ] Values Entered By
- [x] Range of Values
- [ ] Edit Rule


## Relationship Characteristics Affected
- [ ] Deletion rule
- [X] Type of participation
- [ ] Degree of participation

    
## Action Taken
List changes made to database structure or application in order to implement this rule.

Do the comparison of the sale_date and the date_required first before price changing 


## Notes

# Business Rule Specifications 3

## Rule Information

| Feature           | Value                     |
|-------------------|---------------------------|
| Rule Statement    |Customers can take one or more rugs home on a trial basis.                      |
| Constraint        |A rug on trial must always be associated with a valid customer. A customer may take multiple rugs at once.                           |
| Type              | [x] Database Oriented     |
|                   | [ ] Application Oriented  |
|                   |                           |
| Category          | [ ] Field Specific        |
|                   | [x] Relationship Specific |
|                   |                           |
| Test On           | [x] Insert                |
|                   | [ ] Delete                |
|                   | [x] Update                |


## Structures Affected

| Feature           | Value                     |
|-------------------|---------------------------|
| Field Names       |customer_id,inventory_id                           |
| Table Names       |Customer, Rug, Trial                           |


## Field Elements Affected
Mark each element which is affected by this rule.

### Physical Elements
- [ ] Data Type
- [ ] Length
- [ ] Character Support

### Logical Elements
- [x] Key Type
- [x] Key Structure
- [x] Uniqueness
- [ ] Null Support
- [ ] Values Entered By
- [ ] Range of Values
- [ ] Edit Rule


## Relationship Characteristics Affected
- [ ] Deletion rule
- [x] Type of participation
- [x] Degree of participation

    
## Action Taken
List changes made to database structure or application in order to implement this rule.

Using a trial table to manage all the trial we got for rugs.

## Notes

# Business Rule Specifications 4

## Rule Information

| Feature           | Value                     |
|-------------------|---------------------------|
| Rule Statement    |Each mobile phone has a primary owner, so no two customers can have the same number.                     |
| Constraint        |The mobile number must be different among customers                           |
| Type              | [x] Database Oriented     |
|                   | [ ] Application Oriented  |
|                   |                           |
| Category          | [x] Field Specific        |
|                   | [ ] Relationship Specific |
|                   |                           |
| Test On           | [x] Insert                |
|                   | [ ] Delete                |
|                   | [x] Update                |


## Structures Affected

| Feature           | Value                     |
|-------------------|---------------------------|
| Field Names       |mobile_number                           |
| Table Names       |Customer                          |


## Field Elements Affected
Mark each element which is affected by this rule.

### Physical Elements
- [ ] Data Type
- [ ] Length
- [ ] Character Support

### Logical Elements
- [ ] Key Type
- [ ] Key Structure
- [x] Uniqueness
- [ ] Null Support
- [ ] Values Entered By
- [ ] Range of Values
- [ ] Edit Rule


## Relationship Characteristics Affected
- [ ] Deletion rule
- [ ] Type of participation
- [ ] Degree of participation

    
## Action Taken
List changes made to database structure or application in order to implement this rule.

Could be NULL if the customer doesn't provide mobile number.
Checking if the field has the same two phone number.
## Notes

# Business Rule Specifications 5

## Rule Information

| Feature           | Value                     |
|-------------------|---------------------------|
| Rule Statement    |A rug can be removed from the database only if it has never been sold or loaned out on a trial basis.                    |
| Constraint        |After a customer has interacted with the rug, its record must be preserved in the database.                           |
| Type              | [x] Database Oriented     |
|                   | [ ] Application Oriented  |
|                   |                           |
| Category          | [ ] Field Specific        |
|                   | [x] Relationship Specific |
|                   |                           |
| Test On           | [ ] Insert                |
|                   | [x] Delete                |
|                   | [ ] Update                |


## Structures Affected

| Feature           | Value                     |
|-------------------|---------------------------|
| Field Names       |inventory_id,sale_id,status,trial_id                           |
| Table Names       |Rugs, Sale, Trial                         |


## Field Elements Affected
Mark each element which is affected by this rule.

### Physical Elements
- [ ] Data Type
- [ ] Length
- [ ] Character Support

### Logical Elements
- [ ] Key Type
- [ ] Key Structure
- [ ] Uniqueness
- [ ] Null Support
- [ ] Values Entered By
- [ ] Range of Values
- [ ] Edit Rule


## Relationship Characteristics Affected
- [x] Deletion rule
- [x] Type of participation
- [ ] Degree of participation

    
## Action Taken
List changes made to database structure or application in order to implement this rule.

Before deleting a rug in database check it's corresponding info with trial and sale first.
## Notes