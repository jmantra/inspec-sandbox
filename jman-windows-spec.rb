describe os.windows? do
	it { should eq true }
end

%w(
	DHCPServer
	DNS
	FreeSSHDService
	wampmysqld64
).each do |svc|
	describe service(svc) do
		it { should be_installed }
		it { should be_enabled }
		it { should be_running }
	end
end

describe package('QEMU guest agent') do
	it { should be_installed }
end
