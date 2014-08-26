require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pci do
  let(:pci_class) do
    class Fog::Compute::XenServer::Models::Pci
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pci
  end

  it 'should associate to a provider class' do
    pci_class.provider_class.must_equal('PCI')
  end

  it 'should have a collection name' do
    pci_class.collection_name.must_equal(:pcis)
  end

  it 'should have an unique id' do
    pci_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    pci_class.attributes.must_equal([ :reference,
                                      :device_name,
                                      :other_config,
                                      :pci_id,
                                      :uuid,
                                      :vendor_name ])
  end

  it "shouldn't have aliases" do
    pci_class.aliases.must_equal({})
  end

  it "shouldn't have default values" do
    pci_class.default_values.must_equal({})
  end

  it "shouldn't require attributes before save" do
    pci_class.require_before_save.must_equal([])
  end
end