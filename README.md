# BUGS

I have tried to maintain the ability to skip role dependencies when deploying.
This seems reasonable during development because it allows much more rapid
deployments, which is very noticeable when repeatedly writing and testing small
changes.  Currently, every meta file is expected to declare every dependency
with the "dependency" tag.  That's pretty much two identical lines in addition
to every actual dependency line, which really bothers me to look at.  However,
when I need to adjust a configuration file, and the documentation is unclear,
and the configured program is picky, it can be very helpful to try each new
change rapidly.  Like so:

```
./bin/deploy-role-to-hosts <role> <host> --skip-tags dependency
```

