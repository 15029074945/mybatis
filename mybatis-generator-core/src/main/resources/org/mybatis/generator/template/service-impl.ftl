package ${packageName};

import com.dingxuan.atrm.${moduleName}.service.IAssetsCardService;
import com.dingxuan.atom.${moduleName}.entity.${objectName};
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Service
@Transactional
public class {objectName}Service extends ${moduleName}BaseService<{objectName}> implements I{objectName}Service {

        @Autowired
        private I{objectName}DOM {objectName?uncap_first}DOM;

        /**
         * 新增操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public {objectName} insert({objectName} {objectName?uncap_first}) {
            return {objectName?uncap_first}DOM.insert(assetsCardDTO);
        }

        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        @Override
        public {objectName} queryBean(Integer id) {
            return {objectName?uncap_first}DOM.queryBean(id);
        }

        /**
         * 查询分页操作
         * @param: {objectName?uncap_first}
         * @param: pageInfo
         */
        @Override
        public PageInfo queryPage({objectName} {objectName?uncap_first}, PageInfo pageInfo) {
            return {objectName?uncap_first}DOM.queryPage({objectName?uncap_first},pageInfo);
        }

        /**
         * 查询list操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public List<{objectName}> queryList({objectName} {objectName?uncap_first}) {
            return {objectName?uncap_first}DOM.queryList({objectName?uncap_first});
        }

        /**
         * 删除操作
         * @param: ids
         */
        @Override
        public Integer[] delete(Integer ... ids) {
            return {objectName?uncap_first}DOM.delete(ids);
        }

        /**
         * 更新操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public {objectName} update({objectName} {objectName?uncap_first}) {
            return {objectName?uncap_first}.update({objectName?uncap_first});
        }
}