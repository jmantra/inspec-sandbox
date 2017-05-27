describe directory('/home/jman') do
	it { should exist }
	it { should be_directory }
end

describe user('jman') do
	it { should exist }
	its('uid') { should eq 1000 }
end

describe service('sshd') do
	it { should be_installed }
	it { should be_enabled }
	it { should be_running }
end

describe os.name do
   it { should eq 'redhat' }
end

describe os.release do
   it { should eq '7.3' }
end

describe os.arch do
   it { should eq 'x86_64' }
end

%w(
	www.google.com
	www.ibm.com
	www.slashdot.org
	www.reddit.com
).each do |site|
	describe host(site, port: 80, proto: 'tcp') do
		it { should be_reachable }
		it { should be_resolvable }
	end
end
