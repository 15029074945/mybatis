package ${packageName}.generator.impl;

import org.springframework.beans.factory.annotation.Autowired;
import com.dingxuan.atom.${moduleName}.entity.${objectName};
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import com.dingxuan.atom.core.base.AbstractService;
import com.dingxuan.atom.core.base.PageInfo;
import com.dingxuan.atom.${moduleName}.domain.generator.I${objectName}DOM;
import com.dingxuan.atom.${moduleName}.service.generator.I${objectName}Service;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */

@Service("${objectName?uncap_first}Service")
@Transactional(rollbackFor = Exception.class)
public class ${objectName}ServiceImpl extends AbstractService<${objectName}> implements I${objectName}Service {

        @Autowired
        @Qualifier("${objectName?uncap_first}DOM")
        private I${objectName}DOM ${objectName?uncap_first}DOM;

        /**
         * 新增操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public ${objectName} insert(${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}DOM.insert(${objectName?uncap_first});
        }

        /**
         * 更新操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public ${objectName} update(${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}DOM.update(${objectName?uncap_first});
        }

        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        @Override
        public ${objectName} queryBean(${primaryKeyType} ${primaryKey}) {
            return ${objectName?uncap_first}DOM.queryBean(${primaryKey});
        }

        /**
         * 查询分页操作
         * @param: ${objectName?uncap_first}
         * @param: pageInfo
         */
        @Override
        public PageInfo queryPage(PageInfo pageInfo,${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}DOM.queryPage(pageInfo,${objectName?uncap_first});
        }

        /**
         * 查询list操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public List<${objectName}> queryList(${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}DOM.queryList(${objectName?uncap_first});
        }

        /**
         * 删除操作
         * @param: ids
         */
        @Override
        public void delete(${primaryKeyType}... ${primaryKey}s) {
             ${objectName?uncap_first}DOM.delete(${primaryKey}s);
        }


}