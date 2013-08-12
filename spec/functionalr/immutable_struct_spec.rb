describe Functionalr::ImmutableStruct do
  it "makes a struct subclass" do
    book_class = Functionalr::ImmutableStruct.new(:title, :author)
    assert { book_class.new.is_a?(Struct) }
  end

  it "makes frozen instances with a block" do
    book_class = Functionalr::ImmutableStruct.new(:title, :author)
    book = book_class.new("Read Me", "Anybody") {}
    assert { book.frozen? }
  end

  it "makes frozen instances without a block" do
    book_class = Functionalr::ImmutableStruct.new(:title, :author)
    book = book_class.new("Read Me", "Anybody")
    assert { book.frozen? }
  end

  it "applies block submitted to class constructor" do
    book_class = Functionalr::ImmutableStruct.new(:title, :author) {
      def extended?
        true
      end
    }
    book = book_class.new("Read Me", "Anybody")
    assert { book.extended? }
  end

  it "prevents modification through extensions" do
    book_class = Functionalr::ImmutableStruct.new(:title, :author) {
      def update_title(updated)
        @title = updated
      end
    }
    book = book_class.new("Read Me", "Anybody")
    expect { book.update_title "with this" }.to raise_error(/frozen/)
  end
end
