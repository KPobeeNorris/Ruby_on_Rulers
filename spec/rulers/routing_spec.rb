RSpec.describe Rulers::Application do
  let(:env) { { "PATH_INFO" => "/quotes/a_quote" } }

  it "will do something?" do
    expect(subject.get_controller_and_action(env)).to eq ""
  end
end
