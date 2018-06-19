package ${packageName};

import com.dingxuan.atom.core.base.BaseResource;
import com.dingxuan.atom.${moduleName}.service.I${objectName}Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Objects;

/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@RestController
@RequestMapping("/api")
public class ${objectName}ExpResource extends BaseResource{

    private static Logger logger=LoggerFactory.getLogger(${objectName}Resource.class);

    @Autowired
    private I${objectName}Service ${objectName?uncap_first}Service;

}