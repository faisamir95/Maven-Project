name: cicd
on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: clone the repository
        uses: actions/checkout@v4.1.5
      - name: list files
        run: ls -l
      - name: Installing Java 11 on the runner machine
        uses: actions/setup-java@v4.2.1
        with: 
          java-version: '11'
          distribution: 'temurin'
          cache: 'maven'
      - name: verify java
        run: java -version
