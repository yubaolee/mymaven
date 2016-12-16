package test.com.yubao.service.Impl;

import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.model.Question;
import com.yubao.service.QuestionService;
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * QuestionServiceImpl Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>ʮ���� 2, 2016</pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
/** 注入相关的配置文件：可以写入多个配置文件 **/
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"
})
public class QuestionServiceImplTest {
    @Resource
    QuestionService service;

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: Get(String key, int index, int size)
     */
    @Test
    public void testGet() throws Exception {
        service.getByUserAnswer("d8c8a352-452f-45ea-b699-4dc566885694", 0, 10);
//TODO: Test goes here... 
    }

    /**
     * Method: add(Question question)
     */
    @Test
    public void testAdd() throws Exception {
        Question question = new Question();

        question.setTitle("新");
        question.setContent("dddddddd");
        question.setUserid("admin");
        service.add(question);
    }


} 
