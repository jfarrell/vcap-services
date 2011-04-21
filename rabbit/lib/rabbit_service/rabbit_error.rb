# Copyright (c) 2009-2011 VMware, Inc.
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', '..', 'base', 'lib')
require 'base/service_error'

module VCAP
  module Services
    module Rabbit
      class RabbitError < VCAP::Services::Base::Error::ServiceError
        # 31300 - 31399  Rabbit-specific Error
        RABBIT_SAVE_SERVICE_FAILED    = [31300, HTTP_INTERNAL, "Could not save service: %s"]
        RABBIT_DESTORY_SERVICE_FAILED = [31301, HTTP_INTERNAL, "Could not destroy service: %s"]
        RABBIT_FIND_SERVICE_FAILED    = [31302, HTTP_NOT_FOUND, "Could not find service: %s"]
        RABBIT_START_SERVICE_FAILED   = [31303, HTTP_INTERNAL, "Could not start service: %s"]
        RABBIT_STOP_SERVICE_FAILED    = [31304, HTTP_INTERNAL, "Could not stop service: %s"]
        RABBIT_INVALID_PLAN           = [31305, HTTP_INTERNAL, "Invalid plan: %s"]
        RABBIT_START_SERVER_FAILED    = [31306, HTTP_INTERNAL, "Could not start rabbitmq server"]
        RABBIT_ADD_VHOST_FAILED       = [31307, HTTP_INTERNAL, "Could not add vhost: %s"]
        RABBIT_DELETE_VHOST_FAILED    = [31308, HTTP_INTERNAL, "Could not delete vhost: %s"]
        RABBIT_ADD_USER_FAILED        = [31309, HTTP_INTERNAL, "Could not add user: %s"]
        RABBIT_DELETE_USER_FAILED     = [31310, HTTP_INTERNAL, "Could not delete user: %s"]
        RABBIT_GET_PERMISSION_FAILED  = [31311, HTTP_INTERNAL, "Could not get user %s permission"]
        RABBIT_SET_PERMISSION_FAILED  = [31312, HTTP_INTERNAL, "Could not set user %s permission to %s"]
        RABBIT_LIST_USERS_FAILED      = [31313, HTTP_INTERNAL, "Could not list users"]
      end
    end
  end
end
