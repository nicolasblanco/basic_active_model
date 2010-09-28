require "spec_helper"

class ContactForm < BasicActiveModel
  attr_accessor :email, :subject, :body, :admin
  attr_accessible :email, :subject, :body
  validates_presence_of :body
end

describe 'BasicActiveModel' do
  it 'should initialize without arguments' do
    lambda { ContactForm.new }.should_not raise_error
  end
  
  it 'should initialize with a hash containing symbols and strings keys and set attributes' do
    contact_form = ContactForm.new(:email => "yeah@yeah.com", "subject" => "lol")
    contact_form.email.should == "yeah@yeah.com"
    contact_form.subject.should == "lol"
  end

  it 'should ignore invalid attributes in the hash' do
    contact_form = ContactForm.new(:invalid => "oh noes", :body => "plop")
    contact_form.body.should == "plop"
  end
  
  it 'should have mass assignment security' do
    contact_form = ContactForm.new(:email => "yeah@yeah.com", :admin => true)
    contact_form.admin.should be_nil
  end
  
  it "should validate" do
    contact_form = ContactForm.new
    contact_form.should_not be_valid
    contact_form.body = "plop"
    contact_form.should be_valid
  end
  
  it "should respond to some required methods in order to pass it in a form" do
    contact_form = ContactForm.new
    contact_form.should_not be_persisted
    contact_form.to_key.should be_nil
    contact_form.to_param.should be_nil
  end
end

