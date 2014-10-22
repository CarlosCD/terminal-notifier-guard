module TerminalNotifier
  module Guard
    module Pending
      terminal_notifier_path = `which terminal-notifier`.strip

      BIN_PATH = terminal_notifier_path.empty? ?
        File.expand_path('../../../../vendor/terminal-notifier-pending.app/Contents/MacOS/terminal-notifier', __FILE__)
        :
        terminal_notifier_path
    end
  end
end
