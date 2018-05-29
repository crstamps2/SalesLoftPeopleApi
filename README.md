[![Build Status](https://travis-ci.com/crstamps2/SalesLoftPeopleApi.svg?branch=master)](https://travis-ci.com/crstamps2/SalesLoftPeopleApi)

# SaleLoft People API
A rails backend API for the [SalesLoft React Client](https://github.com/crstamps2/SalesLoftPeopleClient)

## Usage
Simply clone this repo: `cd ~/workspace && git clone https://github.com/crstamps2/SalesLoftPeopleApi.git`

Open the directory: `cd ~/workspace/SalesLoftPeopleApi`

### ENV

Make sure to start the app<sup>1</sup> with the `SALESLOFT_API_KEY` and `SALESLOFT_API_URL` ENVs set: `bundle && SALESLOFT_API_KEY={key} SALESLOFT_API_URL=https://api.salesloft.com/v2 rails s`

This should automatically start the app and will respond at localhost:3000

## React Client

While this is a standalone API rails app, you can view a website that leverages this API by starting up the [React Client](https://github.com/crstamps2/SaleLoftPeopleClient).

<hr>

<sup>1</sup>Application assumes you have ruby 2.4.1 installed and the Bundler gem installed. I suggest using [rbenv](https://github.com/rbenv/rbenv) to manage your ruby environment.
