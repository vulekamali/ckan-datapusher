CKAN DataPusher server
======================

Dockerfile for running the CKAN DataPusher server on dokku.

Deployment
----------

Set up an app called `ckan-datapusher` on the dokku server. No additional config is needed.

```
git remote add dokku dokku@treasury1.openup.org.za:ckan-datapusher
```

```
git push dokku master
```

Remember to set up a link from `ckan` to `ckan-datastore`.