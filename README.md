# Example

This is a test of using ActiveJob & ActionCable together.

- Rails 5.0.0.1
- Resque

Start Resque worker:

```
INTERVAL=0.1 PIDFILE=./resque.pid BACKGROUND=yes QUEUE='*' rake environment resque:work
```
