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

        ${objectName} entity = ${objectName?uncap_first}MDAO.selectByPrimaryKey(${objectName?uncap_first}.getId());

        if(Objects.nonNull(entity){
                ${objectName}Example ${objectName?uncap_first}Example = new ${objectName}Example();
                ${objectName?uncap_first}Example.createCriteria().andIdEqualTo(entity.getId());
                ${objectName?uncap_first}MDAO.updateByExampleSelective(${objectName?uncap_first},${objectName?uncap_first}Example);
        }
            return ${objectName?uncap_first};
        }

        /**
         * 删除操作
         * @param: ids
         */
        @Override
        public void delete(Long... ids) {
            ${objectName?uncap_first}MDAO.delete(ids);
            if (Objects.nonNull(ids)) {
                for (int i = 0; i < ids.length; i++) {
                    ${objectName} ${objectName?uncap_first} = new SysRole();
                    ${objectName?uncap_first}.setId(ids[i]);
                    ${objectName?uncap_first}.setStatus(Constants.INVALID);
                    ${objectName?uncap_first}MDAO.updateByPrimaryKeySelective(${objectName?uncap_first});
                }
            }
        }


        /**
         * 根据主键进行查询操作
         * @param: id
         */
        @Override
        public ${objectName} queryBean(Long id) {

            return ${objectName?uncap_first}MDAO.selectByPrimaryKey(id);
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