package ${packageName};

import com.dingxuan.atom.${moduleName}.entity.${objectName};
import org.apache.shiro.SecurityUtils;
import java.util.List;

/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
public interface I{objectName}DOM extends I${moduleName}Domain<{objectName}>{

        /**
         * 新增操作
         * @param: {objectName?uncap_first}
         */
        {objectName} insert({objectName} {objectName?uncap_first});


        /**
         * 删除操作
         * @param: ids
         */
        Integer[] delete(Integer ... ids);

        /**
         * 更新操作
         * @param: {objectName?uncap_first}
         */
        {objectName} update({objectName} {objectName?uncap_first});

        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        {objectName} queryBean(Integer id);

        /**
         * 查询list操作
         * @param: {objectName?uncap_first}
         */
        List<{objectName}> queryList({objectName} {objectName?uncap_first});

        /**
         * 查询分页操作
         * @param: {objectName?uncap_first}
         * @param: pageInfo
         */
        PageInfo queryPage({objectName} {objectName?uncap_first}, PageInfo pageInfo);
}