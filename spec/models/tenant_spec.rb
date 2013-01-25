require 'spec_helper'

describe Tenant do
  before(:each) do 
    @attrs = {:first_name => "James", :middle_name => "Patrick", :last_name => "West", :email => "zxcvbgfdsa8@gmail.com"  }  
  end 
  it "should create a tenant with basic information" do
    t = Tenant.new(@attrs)
    t.first_name.should eq(@attrs[:first_name])
    t.middle_name.should eq(@attrs[:middle_name])
    t.last_name.should eq(@attrs[:last_name])
    t.email.should eq(@attrs[:email])
  end
  it "should create new salaries for the tenant" do
    t = Tenant.new(@attrs)
    t.salaries
  end
end
