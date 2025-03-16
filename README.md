## TryAPL
This is the repository for development of [TryAPL.org](https://tryapl.org)

The full version number is hard coded in `lib/tryapl.js`

## Contributing

### Run TryAPL locally
The APL web service is in [TAE.apln](./TAE.apln). To run it locally do

```
dyalog LOAD=/path/to/TAE.apln
```

TAE should bring in all of its dependencies automatically and serve the front end at [localhost:8080](http://localhost:8080).

### Staged Continuous Integration
1. Development work is pushed into the master branch.
2. The master branch is merged into the staging branch. Check TryAPL has successfully built in Jenkins and see the result on [staging.tryapl.org](https://staging.tryapl.org)
3. Merge staging into the live branch.
