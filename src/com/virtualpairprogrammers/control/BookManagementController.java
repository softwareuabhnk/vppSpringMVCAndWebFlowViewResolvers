package com.virtualpairprogrammers.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtualpairprogrammers.domain.Book;
import com.virtualpairprogrammers.services.BookService;
import com.virtualpairprogrammers.views.BooksReportExcel;
import com.virtualpairprogrammers.views.BooksReportPdf;

@Controller
public class BookManagementController {
	
	@Autowired
	private BookService bookService;
	

	
	@RequestMapping("viewAllBooksPDF")
	public ModelAndView viewAllBooksPDF() {
		List<Book> allBooks = bookService.getEntireCatalogue();
		return new ModelAndView("booksReportPdf","allBooks", allBooks);
	}
	
	@RequestMapping("viewAllBooksExcel")
	public ModelAndView viewAllBooksExcel() {
		List<Book> allBooks = bookService.getEntireCatalogue();
		return new ModelAndView("booksReportExcel","allBooks", allBooks);
	}
	
	// Not need when auto wiring
//	public void setBookService(BookService bookService) {
//		this.bookService = bookService;
//	}
	
	
	@RequestMapping("/viewAllBooks")
	public ModelAndView viewAllBooks() {
		List<Book> allBooks = bookService.getEntireCatalogue();
		return new ModelAndView("displayAllBooks", "allBooks", allBooks);
	}
	
	
	@RequestMapping("/findByAuthor")
	public ModelAndView findByAuthor(@RequestParam("AUTHOR")String author) {
		
     List<Book> books = bookService.getAllBooksByAuthor(author);
     
     return new ModelAndView("displayAllBooks", "allBooks", books);
		
	}


}
