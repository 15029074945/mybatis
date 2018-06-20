package ${packageName}.expand.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dingxuan.atom.core.base.AbstractService;
import com.dingxuan.atom.${moduleName}.domain.expand.I${objectName}ExtDOM;
import com.dingxuan.atom.${moduleName}.service.generator.impl.${objectName}ServiceImpl;
import com.dingxuan.atom.${moduleName}.service.expand.I${objectName}ExtService;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ${objectName}ExtServiceImpl extends ${objectName}ServiceImpl implements I${objectName}ExtService{

        @Autowired
        private I${objectName}ExtDOM ${objectName?uncap_first}ExtDOM;

}