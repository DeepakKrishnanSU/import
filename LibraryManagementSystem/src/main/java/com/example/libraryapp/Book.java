package com.example.libraryapp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "book")
public class Book {
    @Id
    private int bookId;
    private String title;
    private String author;
    private String publisher;
    private String isbn;
    private String edition;
    private int publicationYear;
    private String category;
    private int availableCopies;

    public Book() {}

    public Book(int bookId, String title, String author, String publisher, String isbn, String edition, int publicationYear, String category, int availableCopies) {
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.isbn = isbn;
        this.edition = edition;
        this.publicationYear = publicationYear;
        this.category = category;
        this.availableCopies = availableCopies;
    }

    public int getBookId() { return bookId; }
    public void setBookId(int bookId) { this.bookId = bookId; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }
    public String getIsbn() { return isbn; }
    public void setIsbn(String isbn) { this.isbn = isbn; }
    public String getEdition() { return edition; }
    public void setEdition(String edition) { this.edition = edition; }
    public int getPublicationYear() { return publicationYear; }
    public void setPublicationYear(int publicationYear) { this.publicationYear = publicationYear; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public int getAvailableCopies() { return availableCopies; }
    public void setAvailableCopies(int availableCopies) { this.availableCopies = availableCopies; }
}