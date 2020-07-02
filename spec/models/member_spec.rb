require "rails_helper"

describe Member do
  it "exists" do
    attrs = {
      name: 'Leslie',
      district: '1',
      role: 'Rep',
      party: 'Pizza'
    }

    member = Member.new(attrs)

    expect(member).to be_a Member

    expect(member.name).to eq("Leslie")
    expect(member.role).to eq("Rep")
    expect(member.party).to eq("Pizza")
    expect(member.district).to eq("1")
  end
end
