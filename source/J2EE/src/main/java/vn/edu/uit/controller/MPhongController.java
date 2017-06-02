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

import vn.edu.uit.entity.MPhong;
import vn.edu.uit.service.MPhongService;

@Controller
public class MPhongController {
	private static final Logger logger = Logger.getLogger(MPhongController.class);

	public MPhongController() {
        System.out.println("PhongController()");
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
    private MPhongService phongService;
	
	@RequestMapping("editroom")
    public ModelAndView firstcome() {
        return new ModelAndView("EditPhong");
    }
	@RequestMapping("createPhong")
    public ModelAndView createPhong(@ModelAttribute MPhong phong) {
        logger.info("Creating MPhong. Data: "+phong);
        return new ModelAndView("EditPhong");
    }
	
	@RequestMapping(value = "creaup", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView creaup(@RequestParam long id,@RequestParam String ten,
    		@RequestParam long statusid,@RequestParam long giangay,@RequestParam long giadem) {
		MPhong x = new MPhong();
	
		if(ten!="")
			x.setTen(ten);
		if(giangay!=0)
			x.setGiaNgay(giangay);
		if(giadem!=0)
			x.setGiaDem(giadem);
		x.setStatusID(statusid);
		
		if(id!=0){
			x.setID(id);
			phongService.updatePhong(x);
		}else
		{
			x.setStatusID((long) 0);
			phongService.createPhong(x);
		}
		
        return new ModelAndView("redirect:editroom");
    }
    
    @RequestMapping("editPhong")
    public ModelAndView editPhong(@RequestParam long id, @ModelAttribute MPhong phong) {
        logger.info("Updating the Phong for the Id "+id);
        phong = phongService.getPhong(id);
        return new ModelAndView("phongForm", "phongObject", phong);
    }
    
    @RequestMapping("savePhong")
    public ModelAndView savePhong(@ModelAttribute MPhong phong) {
        logger.info("Saving the MPhong. Data : "+phong);
        if(phong.getID() == 0){ // if employee id is 0 then creating the employee other updating the employee
            phongService.createPhong(phong);
        } else {
            phongService.updatePhong(phong);
        }
        return new ModelAndView("redirect:getAllPayments");
    }
    
    @RequestMapping("deletePhong")
    public ModelAndView deletePhong(@RequestParam long id) {
        logger.info("Deleting the MPhong. Id : "+id);
        phongService.deletePhong(id);
        return new ModelAndView("");
    }
    
    @RequestMapping(value = {"getAllPhong"})
    public ModelAndView getAllPhong() {
        logger.info("Getting the all Phong");
        List<MPhong> phongList = phongService.getAllPhong();
        return new ModelAndView("Phong", "phongList", phongList);
    }  
    

    @RequestMapping(value = {"ct_phong"})
    public ModelAndView goCT_Phong(@RequestParam long id) {
        logger.info("Getting ct-phong");
        MPhong phong = phongService.getPhong(id);
        return new ModelAndView("CT_Phong", "phong", phong);
    }  
    
}