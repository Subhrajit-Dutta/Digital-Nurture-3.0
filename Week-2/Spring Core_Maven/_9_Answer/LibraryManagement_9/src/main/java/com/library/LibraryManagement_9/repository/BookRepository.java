package com.library.LibraryManagement_9.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.library.LibraryManagement_9.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
}
