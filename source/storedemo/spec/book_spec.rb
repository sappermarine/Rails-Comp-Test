require_relative 'spec_helper'

describe Book do
	before :each do
		@book = Book.new "Title", "Author", :category
	end

	describe "#new" do
		it "returns a new book object" do
			expect(@book) be_an_instance_of Book
		end

		it "takes three parameters and returns a book object" do
			book = Book.new "Title", "Author"
			expect(book).to_not be_an_instance_of book
		end
	end
end