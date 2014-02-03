# Billing System Code Kata

The following is an advanced [kata](http://en.wikipedia.org/wiki/Kata_(programming)), an exercise in thought, coding, and testing. Unlike most kata's which only take a few minutes, this kata may take a few days or even weeks as it includes a lot of features and the resulting implementation will have many moving parts.

I'm writing this kata for myself because I want to get better and faster at solving complex real world problems that a I deal with daily at my job.

## Before You Start

* Try not to read ahead.
* Implement one feature at a time.

## Run Features

```
bundle exec guard
```

## Features

```cucumber
Feature: Purchase license
  As a customer
  In order to use the software
  I can purchase a license
  
  Scenario:
    Given I find the software "Text Editor"
    When I purchase a license
    Then I can use "Text Editor"
```
