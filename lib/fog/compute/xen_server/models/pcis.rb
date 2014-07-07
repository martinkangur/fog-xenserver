require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Pcis < Fog::Collection
          model Fog::Compute::XenServer::Models::Pci

          def all(options = {})
            data = service.get_records 'PCI'
            load(data)
          end

          def get(pci_ref)
            if pci_ref && pci = service.get_record( pci_ref, 'PCI' )
              new(pci)
            else
              nil
            end
          end
        end
      end
    end
  end
end