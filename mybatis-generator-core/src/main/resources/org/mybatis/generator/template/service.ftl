package ${packageName}.generator;

import com.dingxuan.atom.core.base.IService;
import com.dingxuan.atom.${moduleName}.entity.${objectName};
import com.dingxuan.atom.core.base.PageInfo;
import java.util.List;


/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */

public interface I${objectName}Service extends IService<${objectName}> {

        /**
         * 新增操作
         * @param: ${objectName?uncap_first}
         */
        ${objectName} insert(${objectName} ${objectName?uncap_first});

        /**
         * 更新操作
         * @param: ${objectName?uncap_first}
         */
        ${objectName} update(${objectName} ${objectName?uncap_first});

        /**
         * 删除操作
         * @param: ${primaryKey}s
         */
        void delete(${primaryKeyType}...  ${primaryKey}s);

        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        ${objectName} queryBean(${primaryKeyType} ${primaryKey});

        /**
         * 查询list操作
         * @param:  ${objectName?uncap_first}
         */
        List<${objectName}> queryList(${objectName} ${objectName?uncap_first});

        /**
         * 查询分页操作
         * @param:  ${objectName?uncap_first}
         * @param: pageInfo
         */
        PageInfo queryPage(PageInfo pageInfo, ${objectName} ${objectName?uncap_first});
}