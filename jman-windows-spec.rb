describe os.windows? do
	it { should eq true }
end

%w(
	DHCPServer
	DNS
	DFSR
	NTDS
	ADWS
	Dfs
	Kdc
	Netlogon
	W32Time
	
).each do |svc|
	describe service(svc) do
		it { should be_installed }
		it { should be_enabled }
		it { should be_running }
	end
end

describe package('AD Replication Status Tool 1.0') do
	it { should be_installed }
end
