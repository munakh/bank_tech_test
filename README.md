# Bank Tech Test
___

## Summary

Week 10 Makers Academy tech test to build a banking application.</br>
[Full instructions here.](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)
___

## Technical

### Tech/Frameworks Used

Ruby, RSpec, Rubocop, Simple Coverage

**Programme fully tested; all classes isolated with 100% test coverage and no linter offenses**

### Using the Application

#### Clone the repo and launch:

```
$ git clone https://github.com/munakh/bank_tech_test
$ cd bank_tech_test
$ bundle
$ irb
> require './lib/account.rb'
```

#### Example usage:

```
# create a new account
> account = Account.new

# deposit money in the account
> account.deposit(100)

# withdraw money from the account
> account.withdraw(50)

# print a summary
> account.summary

date || credit || debit || balance
14/08/2018 || 0 || 50 || 50
14/08/2018 || 100 || 0 || 100
```
___
