package ${packageName}.expand.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dingxuan.atom.core.base.AbstractService;
import com.dingxuan.atom.${moduleName}.domain.expand.I${objectName}ExpDOM;
import com.dingxuan.atom.${moduleName}.service.generator.impl.${objectName}ServiceImpl;
import com.dingxuan.atom.${moduleName}.service.expand.I${objectName}ExpService;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ${objectName}ExpServiceImpl extends ${objectName}ServiceImpl implements I${objectName}ExpService{

        @Autowired
        private I${objectName}ExpDOM ${objectName?uncap_first}ExpDOM;

}