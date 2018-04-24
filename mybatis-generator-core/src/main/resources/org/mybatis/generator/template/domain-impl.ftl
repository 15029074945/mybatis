package ${packageName};

import com.dingxuan.atom.${moduleName}.entity.${objectName};
import com.dingxuan.atrm.${moduleName}.domain.I{objectName}DOM;
import com.dingxuan.atom.system.entity.SysUser;
import org.apache.shiro.SecurityUtils;
import java.util.List;

/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@Component
public class {objectName}DOM implements I{objectName}DOM{

        @Autowired
        private I{objectName}MDAO {objectName?uncap_first}MDAO;

        /**
         * 新增操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public {objectName} insert({objectName} {objectName?uncap_first}) {
            {objectName?uncap_first}MDAO.insert({objectName?uncap_first});
        }

        /**
         * 删除操作
         * @param: ids
         */
        @Override
        public Integer[] delete(Integer ... ids) {
            SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
            if(Objects.nonNull(ids)){
                if(ids.length == 1){
                {objectName?uncap_first}MDAO.delete(ids[0],sysUser.getStaffId(),dateNow());
                }else{
                {objectName?uncap_first}MDAO.batchDelete(ids,sysUser.getStaffId(),dateNow());
                }
            }
                return ids;
        }

        /**
         * 更新操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public {objectName} update({objectName} {objectName?uncap_first}) {
            {objectName?uncap_first}MDAO.update({objectName?uncap_first});
        }

        /**
         * 根据主键进行查询操作
         * @param: orderNbr
         */
        @Override
        public {objectName} queryBean(Integer id) {

            return {objectName?uncap_first}MDAO.queryBean(id);
        }

        /**
         * 查询list操作
         * @param: {objectName?uncap_first}
         */
        @Override
        public List<{objectName}> queryList({objectName} {objectName?uncap_first}) {
            return {objectName?uncap_first}MDAO.queryList({objectName?uncap_first});
        }

        /**
         * 查询分页操作
         * @param: {objectName?uncap_first}
         * @param: pageInfo
         */
        @Override
        public PageInfo queryPage({objectName} {objectName?uncap_first}, PageInfo pageInfo){
            pageInfo.setRows({objectName?uncap_first}MDAO.queryCardPage({objectName?uncap_first},pageInfo));
            pageInfo.setTotal({objectName?uncap_first}MDAO.queryPageTotal({objectName?uncap_first}));
            return pageInfo;
        }
}