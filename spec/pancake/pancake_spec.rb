require File.dirname(__FILE__) + '/../spec_helper'

describe "pancake" do

  it "should get the correct root directory for a file" do
    Pancake.get_root(__FILE__).should == File.expand_path(File.dirname(__FILE__))
  end

  it "should join the arguments together to form a path" do
    Pancake.get_root(__FILE__, "foo").should == File.expand_path(File.join(File.dirname(__FILE__), "foo"))
  end

  describe "handle errors" do
    before do
      @orig_env = ENV['RACK_ENV']
    end

    after do
      ENV['RACK_ENV'] = @orig_env
    end

    it "should allow me to set the error handling status to true" do
      Pancake.handle_errors!(true)
      Pancake.handle_errors?.should be_true
    end

    it "should allow me to set the error handling status to a false" do
      Pancake.handle_errors!(false)
      Pancake.handle_errors?.should be_false
    end

    it "should allow me to set the error handling status to a value" do
      Pancake.handle_errors!("some_string")
      ENV['RACK_ENV'] = "some_string"
      Pancake.handle_errors?.should be_true
      ENV['RACK_ENV'] = "other string"
      Pancake.handle_errors?.should be_false
    end

    it "should allow me to set the error handling status to an array of strings" do
      Pancake.handle_errors!("some", "another")
      ENV['RACK_ENV'] = "some"
      Pancake.handle_errors?.should be_true
      ENV['RACK_ENV'] = "another"
      Pancake.handle_errors?.should be_true
      ENV['RACK_ENV'] = "different"
      Pancake.handle_errors?.should be_false
    end

    it "should default to handling errors in production" do
      Pancake.default_error_handling!
      ENV['RACK_ENV'] = "production"
      Pancake.handle_errors?.should be_true
    end

    it "should default to not handling errors in development" do
      Pancake.default_error_handling!
      ENV['RACK_ENV'] = "development"
      Pancake.default_error_handling!
    end

    it "should default to handling errors in test" do
      Pancake.default_error_handling!
      ENV['RACK_ENV'] = "test"
      Pancake.default_error_handling!
    end
  end

  describe "master stack" do
    before do
      @b4   = Pancake.master_stack
      @tb4  = Pancake.master_templates
    end

    after do
      Pancake.master_stack = @b4
      Pancake.master_templates = @tb4
    end

    it "should have a master stack" do
      Pancake.should respond_to(:master_stack)
    end

    it "should let me set a master stack" do
      mock_stack = mock("stack", :null_object => true)
      Pancake.master_stack = mock_stack
      Pancake.master_stack.should == mock_stack
    end

    it "should provide master templates stack as the master stack" do
      mock_stack = mock("stack", :null_object => true)
      Pancake.master_stack = mock_stack
      Pancake.master_templates.should == mock_stack
    end

    it "should let me overwrite the master_templates independantly of the master" do
      mock_stack = mock("stack",    :null_object => true)
      mock_ui    = mock("ui stack", :null_object => true)
      Pancake.master_stack = mock_stack
      Pancake.master_templates = mock_ui
      Pancake.master_templates.should == mock_ui
      Pancake.master_stack.should == mock_stack
    end

    it "should not change the master templates when updating the master" do
      stack1 = mock("stack1", :null_object => true)
      ui     = mock("ui",     :null_object => true)
      Pancake.master_templates = ui
      Pancake.master_stack = stack1
    end

    it "should provide me with the default template from the master_templates" do
      ui = mock("ui")
      ui.should_receive(:base_template_name).and_return(:fred)
      ui.should_receive(:template).with(:fred).and_return(:template_fred)
      Pancake.master_templates = ui
      Pancake.default_base_template.should == :template_fred
    end
  end
end
