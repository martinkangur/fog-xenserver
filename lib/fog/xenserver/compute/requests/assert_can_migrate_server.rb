module Fog
  module XenServer
    class Compute
      class Real
        def assert_can_migrate_server(ref, dest, live, vdi_map, vif_map, options)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.assert_can_migrate" }, ref, dest, live, vdi_map, vif_map, options)
        end

        alias_method :assert_can_migrate_vm, :assert_can_migrate_server
      end
    end
  end
end
