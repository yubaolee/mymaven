package test.com.yubao.service.Impl; 

import com.yubao.model.Question;
import com.yubao.service.QuestionService;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/** 
* QuestionServiceImpl Tester. 
* 
* @author <Authors name> 
* @since <pre>ʮ���� 2, 2016</pre> 
* @version 1.0 
*/
@RunWith(SpringJUnit4ClassRunner.class)
/** 注入相关的配置文件：可以写入多个配置文件 **/
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"
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
* 
* Method: Get(String key, int index, int size) 
* 
*/ 
@Test
public void testGet() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: add(Question question) 
* 
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
