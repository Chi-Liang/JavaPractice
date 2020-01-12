package quartz;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;
/**
 * Hello world!
 *
 */
public class SpringQuartzJobDemo extends QuartzJobBean
{

	@Override
	protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {
		// TODO Auto-generated method stub
		System.out.println("aaaaaaaaaaaaa");
	}
}
