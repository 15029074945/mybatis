package ${packageName};

import com.dingxuan.atom.core.base.IDOM;
import com.dingxuan.atom.core.base.PageInfo;
import com.dingxuan.atom.${moduleName}.entity.${objectName};
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
public interface I${objectName}DOM extends IDOM<${objectName}>{

        /**
         * 新增操作
         * @param: {objectName?uncap_first}
         */
        ${objectName} insert(${objectName} ${objectName?uncap_first});


        /**
         * 更新操作
         * @param: {objectName?uncap_first}
         */
        ${objectName} update(${objectName} ${objectName?uncap_first});


        /**
         * 删除操作
         * @param: ids
         */
        void delete(Integer... ids);


        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        ${objectName} queryBean(Integer id);

        /**
         * 查询list操作
         * @param: {objectName?uncap_first}
         */
        List<${objectName}> queryList(${objectName} ${objectName?uncap_first});

        /**
         * 查询分页操作
         * @param: {objectName?uncap_first}
         * @param: pageInfo
         */
        PageInfo queryPage(PageInfo pageInfo , ${objectName} ${objectName?uncap_first});
}