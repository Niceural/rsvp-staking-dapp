# RSVP Staking Dapp

## Abstract

In this repository, a solution to the [HackAlgo](https://hackalgo.org/) hackathon [bounty](https://gitcoin.co/issue/TmljZXVyYWxYOTZnUkFWdnd4NTJ1UzZ3NFFZQ1VIUmZSM09hb0IyODU3OQ==) is presented. The purpose of this decentralized application is to allow an Admin to create an event. Attendees can purchase a ticket for this event by staking ALGOs. The amount staked can then be withdrawn once the attendance has been confirmed by the Admin.

## Disclaimer

The reader should be aware that this application is intended for development purposes only and should only be deployed to a test network. In addition, this application has been implemented with two weeks of experience in Reach programming.

# Table of Contents

# Introduction

# Installation Steps

# Problem Analysis

To analyse this application we shall answer the questions below:

- Who is involved in this application?\
  This program involves two parties: an Admin who deploys the application and the Attendees who stake their ALGO to sign up to an event.
- What information do they know at the start of the program?\
  The Admin starts off by knowing the event parameters (id, description, staking minimum to purchase a ticket, and selling period or deadline to purchase a ticket). The Attendees start off by knowing nothing.
- What information are they going to discover and use in the program?\
  Throughout the execution of the program, the Admin learns the attendance of the Attendees. The Attendees learn the event parameters. They can check the attendance of another account address.
- What funds change ownerships during the application and how?
  The Attendees stake the funds by transferring them to the contract. Once attendance have been confirmed, the Attendees can unstake all or part of the total staked amount.

# Data Definition

# Communication construction

# References
