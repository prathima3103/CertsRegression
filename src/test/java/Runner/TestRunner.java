package Runner;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;

public class TestRunner {

    @CucumberOptions(features= {"src/test/java/Feature"}, format = {"json:target/cucumber.json", "html:target/site/cucumber-pretty"}, glue = "Steps")
    public class Testrunner extends AbstractTestNGCucumberTests {}



}
