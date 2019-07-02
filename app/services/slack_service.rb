require 'slack-notifier'

class SlackService

  def self.send_message(message)
    puts "envoie le message via slack #{message}"

    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
    notifier.ping message
  end

end