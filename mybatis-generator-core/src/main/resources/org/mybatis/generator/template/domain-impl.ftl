package ${packageName}.impl;

import com.dingxuan.atom.${moduleName}.entity.${objectName};
import com.dingxuan.atom.${moduleName}.domain.I${objectName}DOM;
import com.dingxuan.atom.core.base.AbstractDOM;
import com.dingxuan.atom.core.base.PageInfo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dingxuan.atom.${moduleName}.dao.I${objectName}MDAO;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Component
public class ${objectName}DOMImpl extends AbstractDOM<${objectName}> implements I${objectName}DOM{

        @Autowired
        private I${objectName}MDAO ${objectName?uncap_first}MDAO;

        /**
         * 新增操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public ${objectName} insert(${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}MDAO.insert(${objectName?uncap_first});
        }

        /**
         * 更新操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public ${objectName} update(${objectName} ${objectName?uncap_first}) {
            return ${objectName?uncap_first}MDAO.update(${objectName?uncap_first});
        }

        /**
         * 删除操作
         * @param: ids
         */
        @Override
        public void delete(Integer... ids) {
            ${objectName?uncap_first}MDAO.delete(ids);
        }


        /**
         * 根据主键进行查询操作
         * @param: id
         */
        @Override
        public ${objectName} queryBean(Integer id) {

            return ${objectName?uncap_first}MDAO.queryBean(id);
        }

        /**
         * 查询list操作
         * @param: ${objectName?uncap_first}
         */
        @Override
        public List<${objectName}> queryList(${objectName} ${objectName?uncap_first}) {
            ${objectName}Example ${objectName?uncap_first}Example = new ${objectName}Example();
            ${objectName?uncap_first}Example.createCriteria().andIpAddrEqualTo("");

            List<${objectName}> list = ${objectName?uncap_first}MDAO.selectByExamlpe(${objectName?uncap_first});
            return list;
        }

        /**
         * 查询分页操作
         * @param: ${objectName?uncap_first}
         * @param: pageInfo
         */
        @Override
        public PageInfo queryPage(PageInfo pageInfo,${objectName} ${objectName?uncap_first}){
            return null;
        }
}