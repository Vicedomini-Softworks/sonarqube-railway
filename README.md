This is just a POC.

Unfortunately, we don't seem to be able to run Sonarqube on Railway due to Railway limitations.

Sonarqube requires its internal ElasticSerach to be fully functional to work.

```logs
bootstrap check failure [1] of [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]; for more information see [https://www.elastic.co/guide/en/elasticsearch/reference/8.19/bootstrap-checks-max-map-count.html]
```

the limit on Railway's internal machiens regarding vm.max_map_count makes it currently impossible to run SonarQube on Railway.
