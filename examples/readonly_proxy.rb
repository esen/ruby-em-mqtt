#!/usr/bin/env ruby

$:.unshift File.dirname(__FILE__)+'/../lib'

require 'mqtt/proxy'

proxy = MQTT::Proxy.new(
    :local_host => '0.0.0.0',
    :local_port => 1883,
    :broker_host => 'mqtt.example.com',
    :broker_port => 1883
)

# Start the proxy
proxy.run