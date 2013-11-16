module TerminalNotifier
  module Guard
    module Notify
      terminal_notifier_path = `which terminal-notifier`
      BIN_PATH = terminal_notifier_path.empty? ?
        File.expand_path('../../../../vendor/terminal-notifier-failed.app/Contents/MacOS/terminal-notifier', __FILE__)
        :
        terminal_notifier_path
    end
  end
end
