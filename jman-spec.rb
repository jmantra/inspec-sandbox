describe directory('/home/jman') do
	it { should exist }
	it { should be_directory }
end

describe user('jman') do
	it { should exist }
	its('uid') { should eq 1000 }
end

%w(
	chefdk
	docker
	python
	virtualbox
	vagrant
).each do |pkg|
	describe package(pkg) do
		it { should be_installed }
	end
end
