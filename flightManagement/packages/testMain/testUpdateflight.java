package testMain;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Manage.Dao.flightDao;
import com.Manage.configuration.SpringRootConfig;
import com.Manage.domain.flight;

public class testUpdateflight {
	
	public static void main(String[] args) {
		ApplicationContext ap=new AnnotationConfigApplicationContext(SpringRootConfig.class);
		flightDao fdao=ap.getBean(flightDao.class);
		flight f=new flight();
		f.setFlightId(2);
		f.setDestination("Bhartpur to pokhara");
		f.setFlightSeat(10);
		f.setFlightStatus(1);
		f.setFlightType(2);
		f.setFlightClass("economy");
		f.setTraveler(1);
		f.setTime("11:30");
		fdao.update(f);
		System.out.println("---------------update---------------");
		

		
		
	
	}

}
