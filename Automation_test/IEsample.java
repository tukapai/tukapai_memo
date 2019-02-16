package ~;

import java.io.IOException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class IEtest {

    private WebDriver driver;

    @Before
    public void setUp() throws Exception {

        System.setProperty("webdriver.ie.driver", "IEDriverSever.exeのパス");
        driver = new InternetExplorerDriver();

    }

    @After
    public void tearDown() throws Exception {

        driver.quit();

    }

    @Test
    public void test() throws InterruptedException {

        try {

            driver.get("URL");
　　　　　　　/*このあとに何らかの処理～
　　　　　　　ログイン処理できるコードのサンプルを挿入する*/
　　　　　　　

        }catch(IOException e){

            System.out.println(e);

        }

    }

}
