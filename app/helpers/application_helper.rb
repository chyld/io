module ApplicationHelper

def show_book_link(book)
  if book.try(:persisted?)
    link_to book.name, edit_book_path(book), :class => 'bookname'
  end
end

end
