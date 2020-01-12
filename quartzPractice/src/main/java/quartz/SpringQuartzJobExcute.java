package quartz;

import org.quartz.SchedulerException;
import org.quartz.impl.StdScheduler;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SpringQuartzJobExcute {

    private static ApplicationContext APP_CONTEXT;
    
    public static void main(String[] args) throws SchedulerException {
        APP_CONTEXT = new FileSystemXmlApplicationContext("C:\\workspace\\quartzPractice\\spring-demo-cfg.xml");
        
        System.out.println("Start - ScheduleController");
 
        getScheduleController().start();

    }

    /**
     * get StdScheduler
     *
     * @return StdScheduler
     */
    public static StdScheduler getScheduleController() {
        StdScheduler bean = null;
        bean = (StdScheduler) APP_CONTEXT.getBean("scheduleController", StdScheduler.class);
        return bean;
    }

}
