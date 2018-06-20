package ${packageName}.expand;

import com.dingxuan.atom.core.base.BaseResource;
import com.dingxuan.atom.system.service.expand.I${objectName}ExtService;
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
@RequestMapping("/api/ext/${moduleName}")
public class ${objectName}ExtResource extends ${objectName}Resource{

    private static Logger logger=LoggerFactory.getLogger(${objectName}ExtResource.class);

    @Autowired
    private I${objectName}ExtService ${objectName?uncap_first}ExtService;

}