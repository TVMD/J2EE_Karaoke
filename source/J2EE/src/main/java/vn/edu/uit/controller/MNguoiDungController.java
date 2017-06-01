package vn.edu.uit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.uit.entity.MNguoiDung;
import vn.edu.uit.service.MNguoiDungService;
import vn.edu.uit.service.MPhongService;

@Controller
public class MNguoiDungController {
	private static final Logger logger = Logger.getLogger(MNguoiDungController.class);

	public MNguoiDungController() {
        System.out.println("PhongController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private MNguoiDungService nguoidungService;
	
	@RequestMapping("user")
    public ModelAndView firstcome() {
		 List<MNguoiDung> dsnguoidung = nguoidungService.getAllNguoiDung();
	     return new ModelAndView("NguoiDung", "dsnguoidung", dsnguoidung);
    }
	@RequestMapping("createUser")
    public ModelAndView createPhong(@ModelAttribute MNguoiDung nguoidung) {
        logger.info("Creating User. Data: "+nguoidung);
        List<MNguoiDung> dsnguoidung = nguoidungService.getAllNguoiDung();
	    return new ModelAndView("NguoiDung", "dsnguoidung", dsnguoidung);
    }
	
	@RequestMapping(value= "preupdate", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView preupdate(@RequestParam long id) {
        MNguoiDung nguoidung= nguoidungService.getNguoiDung(id);
	    return new ModelAndView("MAjaxResult", "nguoidung", nguoidung);
    }
	
	@RequestMapping(value = "creaupuser", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView creaup(@RequestParam long id,@RequestParam String madangnhap,
    		@RequestParam String matkhau,@RequestParam String hoten,@RequestParam  String email,@RequestParam String sodt
    		,@RequestParam  Long manhomquyen) {
		MNguoiDung x = new MNguoiDung();
	
		if(madangnhap!="")
			x.setMaDangNhap(madangnhap);
		x.setMatKhau(matkhau);

		if(hoten!="")
			x.setHoTen(hoten);
		if(email!="")
			x.setEmail(email);
		if(sodt!="")
			x.setSoDT(sodt);
		if(manhomquyen!=0)
			x.setMaNhomQuyen(manhomquyen);
		
		if(id!=0){
			x.setID(id);
			nguoidungService.updateNguoiDung(x);
		}else
		{
			x.setID((long) 0);
			nguoidungService.createNguoiDung(x);
		}
		
		List<MNguoiDung> dsnguoidung = nguoidungService.getAllNguoiDung();
	    return new ModelAndView("NguoiDung", "dsnguoidung", dsnguoidung);
    }
    
    @RequestMapping("editnguoidung")
    public ModelAndView editNguoidung(@RequestParam long id, @ModelAttribute MNguoiDung nguoidung) {
        logger.info("Updating the Phong for the Id "+id);
        nguoidung = nguoidungService.getNguoiDung(id);
        return new ModelAndView("editnguoidungform", "nguoidung", nguoidung);
    }
    
    @RequestMapping("savenguoidung")
    public ModelAndView saveNguoiDung(@ModelAttribute MNguoiDung nguoidung) {
        logger.info("Saving the MNguoiDung. Data : "+nguoidung);
        if(nguoidung.getID() == 0){ // if employee id is 0 then creating the employee other updating the employee
            nguoidungService.createNguoiDung(nguoidung);
        } else {
            nguoidungService.updateNguoiDung(nguoidung);
        }
        return new ModelAndView("redirect:getAllPayments");
    }
    
    @RequestMapping(value= "deleteuser", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView deleteNguoidung(@RequestParam long id) {
        logger.info("Deleting the MNguoiDung. Id : "+id);
        nguoidungService.deleteNguoiDung(id);
        List<MNguoiDung> dsnguoidung = nguoidungService.getAllNguoiDung();
	    return new ModelAndView("NguoiDung", "dsnguoidung", dsnguoidung);
    }
    
    @RequestMapping(value = {"getAllNguoiDung"})
    public ModelAndView getAllPhong() {
        logger.info("Getting the all nguoidung");
        List<MNguoiDung> dsnguoidung = nguoidungService.getAllNguoiDung();
        return new ModelAndView("EditNguoiDung", "dsnguoidung", dsnguoidung);
    }  

}