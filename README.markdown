# TerminalNotifier - Guard Style

A simple Ruby wrapper around the [`terminal-notifier`][HOMEPAGE] command-line
tool, which allows you to send User Notifications to the Notification Center on
Mac OS X 10.8, or higher.

This version has 4 different `terminal-notifiers` included for each status that
[Guard][GUARD] supports:

 1. Failed
 2. Notify
 3. Pending
 4. Success

And each one with their own icon representing it's status.


## Installation

```
$ gem install terminal-notifier-guard
```


## Usage

For full information on all the options, see the tool’s [README][README].

Examples are:

```ruby
TerminalNotifier::Guard.notify('Hello World')
TerminalNotifier::Guard.notify('Hello World', :title => 'Ruby', :subtitle => 'Programming Language')
TerminalNotifier::Guard.notify('Hello World', :activate => 'com.apple.Safari')
TerminalNotifier::Guard.notify('Hello World', :open => 'http://twitter.com/alloy')
TerminalNotifier::Guard.notify('Hello World', :execute => 'say "OMG"')
TerminalNotifier::Guard.notify('Hello World', :group => Process.pid)

TerminalNotifier::Guard.remove(Process.pid)

TerminalNotifier::Guard.list(Process.pid)
TerminalNotifier::Guard.list

TerminalNotifier::Guard.failed('This did not go well.')
TerminalNotifier::Guard.success('This did not go bad.')
TerminalNotifier::Guard.pending('This needs some work still')
```


## License

All the works are available under the MIT license.

See [LICENSE][LICENSE] for details.

[HOMEPAGE]: https://github.com/Springest/terminal-notifier-guard
[GUARD]: https://github.com/guard/guard
[README]: https://github.com/Springest/terminal-notifier-guard/blob/master/README.markdown
[LICENSE]: https://github.com/Springest/terminal-notifier-guard/blob/master/Ruby/LICENSE
