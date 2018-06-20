package ${packageName}.expand.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dingxuan.atom.${moduleName}.dao.mdao.I${objectName}MDAO;
import com.dingxuan.atom.system.domain.generator.impl.${objectName}DOMImpl;
import com.dingxuan.atom.system.domain.expand.I${objectName}ExtDOM;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Component
public class ${objectName}ExtDOMImpl extends ${objectName}DOMImpl implements I${objectName}ExtDOM{

    @Autowired
    private I${objectName}MDAO ${objectName?uncap_first}MDAO;

}