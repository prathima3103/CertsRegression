package Steps;

import Base.BaseUtil;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.io.File;
import java.io.IOException;

public class Hook extends BaseUtil{

    private BaseUtil base;

    public Hook(BaseUtil base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() {
        // System.setProperty("webdriver.gecko.driver","G:\\Selenium\\Geckodriver\\geckodriver.exe");
        //  System.out.println("Opening Firefox browser");
        System.setProperty("webdriver.chrome.driver","D:\\chromedriver_win32\\chromedriver.exe");
        System.out.println("Opening Chrome browser");
        base.driver = new ChromeDriver();
    }

    @After
    public void TearDownTest(Scenario scenario)
    {
        if (scenario.isFailed())
        {
            System.out.println(scenario.getName());

// Prints the screenshot in your local drive mentioned
            File scrFile = ((TakesScreenshot) base.driver).getScreenshotAs(OutputType.FILE);
            try
            {
                FileUtils.copyFile(scrFile, new File("D:\\Automation screenshot\\screenshot.png"));
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
    }


}