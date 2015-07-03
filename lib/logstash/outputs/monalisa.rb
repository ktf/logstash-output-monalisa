# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# An example output that does nothing.
class LogStash::Outputs::Monalisa < LogStash::Outputs::Base
  config_name "monalisa"

  config :host, :validate => :string, :default => "localhost", :required => false, :deprecated => false
  config :port, :validate => :string, :default => "8884", :required => false, :deprecated => false
  config :fields, :validate => :hash, :default => {}, :required => true, :deprecated => false
  
  public
  def register
  end # def register

  public
  def receive(event)
    return "Event received"
  end # def event
end # class LogStash::Outputs::Example
