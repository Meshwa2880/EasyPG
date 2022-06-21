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
import com.easypg.model.FreeVisit;
import com.easypg.model.User;
import com.easypg.util.FTPUtils;
import com.easypg.dao.FreeVisitDao;
import com.easypg.dao.UserDao;
import com.easypg.service.FreeVisitService;
import com.easypg.util.FileUtils;
import com.easypg.util.Mailer;
import com.easypg.util.PasswordEncode;
import com.easypg.util.RandomString;

@Service("freevisitservice")
@Transactional
@SessionAttributes("user")
public class FreeVisitServiceImpl implements FreeVisitService {

	@Autowired
	FreeVisitDao freevisitDao;

	@Autowired
	HttpSession session;

	@Autowired
	UserDao userdao;

	// @Autowired
	// private ServletContext context;
	public List<FreeVisit> getAll() {

		List<FreeVisit> freevisitList = freevisitDao.getActive();

		return freevisitList;

	}

}
