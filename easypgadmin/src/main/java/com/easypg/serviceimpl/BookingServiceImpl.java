package com.easypg.serviceimpl;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.easypg.model.Area;
import com.easypg.model.Booking;
import com.easypg.model.User;
import com.easypg.util.FTPUtils;
import com.easypg.dao.BookingDao;
import com.easypg.dao.UserDao;
import com.easypg.service.BookingService;
import com.easypg.util.FileUtils;
import com.easypg.util.Mailer;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;

@Service("bookingservice")
@Transactional
@SessionAttributes("user")
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;

	@Autowired
	UserDao userdao;

	// @Autowired
	// private ServletContext context;
	public List<Booking> getAll() {

		List<Booking> bookingList = bookingDao.getActive();

		return bookingList;

	}

}
