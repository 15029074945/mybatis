package ${packageName}.expand;

import com.dingxuan.atom.core.base.BaseResource;
import com.dingxuan.atom.system.service.expand.I${objectName}ExpService;
import com.dingxuan.atom.system.web.generator.${objectName}Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@RestController
public class ${objectName}ExpResource extends ${objectName}Resource{

    private static Logger logger=LoggerFactory.getLogger(${objectName}ExpResource.class);

    @Autowired
    private I${objectName}ExpService ${objectName?uncap_first}ExpService;

}