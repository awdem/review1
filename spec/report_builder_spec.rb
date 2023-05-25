require "report_builder"


RSpec.describe "#report_builder" do
  it "returns 'Green: 1' when given 'Green'" do
    school_results = "Green"
    report = report_builder(school_results)
    expect(report).to eq "Green: 1"
  end
  
  it "returns 'Green: 2' when given 'Green, Green'" do
    school_results = "Green, Green"
    report = report_builder(school_results)
    expect(report).to eq "Green: 2"
  end
  it "returns 'Green: 2' when given 'Green, Green'" do
    school_results = "Green,Green"
    report = report_builder(school_results)
    expect(report).to eq "Green: 2"
  end

  it "returns 'Green: 2, Red: 1' when given 'Green, Green, Red'" do
    school_results = "Green, Green, Red"
    report = report_builder(school_results)
    expect(report).to eq "Green: 2\nRed: 1"
  end

  it "returns 'Green: 2, Red: 1' when given 'Green, Green, Red'" do
    school_results = "Green, Green, Red, Amber"
    report = report_builder(school_results)
    expect(report).to eq "Green: 2\nAmber: 1\nRed: 1"
  end



end