package ${packageName}.generator;

import com.dingxuan.atom.core.base.BaseResource;
import com.dingxuan.atom.core.base.PageInfo;
import com.dingxuan.atom.core.base.ResultBean;
import com.dingxuan.atom.${moduleName}.entity.${objectName};
import com.dingxuan.atom.${moduleName}.service.generator.I${objectName}Service;
import com.dingxuan.atom.core.entity.CurrentUserEntity;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.dingxuan.atom.core.utils.annotation.CurrentUser;
import com.dingxuan.atom.core.utils.annotation.TableName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Objects;

/**
 * @Description:
 * @author: mitnick
 * @date: ${generatedDate} ${generatedTime}
 */
@RestController
@RequestMapping("/api/${moduleName}")
public class ${objectName}Resource extends BaseResource {

    private static Logger logger = LoggerFactory.getLogger(${objectName}Resource.class);

    @Autowired
    @Qualifier("${objectName?uncap_first}Service")
    private I${objectName}Service ${objectName?uncap_first}Service;

    @RequestMapping(value = "/${objectName?uncap_first}",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> insert(@RequestBody ${objectName} ${objectName?uncap_first},
                                             @TableName(tableName ="${objectName?uncap_first}", tableNameDesc = "${tableNameDesc}")String tableName,
                                             @CurrentUser CurrentUserEntity currentUser) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】开始插入数据",currentUser.getName());
        try {
            ${objectName?uncap_first} = ${objectName?uncap_first}Service.insert(${objectName?uncap_first});
            resultBean.setData(${objectName?uncap_first});
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】插入数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("插入数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】成功插入数据 {}",currentUser.getName(),${objectName?uncap_first});
        return responseEntity;
    }

    @RequestMapping(value = "/${objectName?uncap_first}",
            method = RequestMethod.PUT,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> update(@RequestBody ${objectName} ${objectName?uncap_first},
                                             @TableName(tableName ="${objectName?uncap_first}", tableNameDesc = "${tableNameDesc}")String tableName,
                                             @CurrentUser  CurrentUserEntity currentUser) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】开始更新数据",currentUser.getName());
        try {
            ${objectName?uncap_first} = ${objectName?uncap_first}Service.update(${objectName?uncap_first});
            resultBean.setData(${objectName?uncap_first});
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】更新数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("更新数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】成功更新数据 {}",currentUser.getName(),${objectName?uncap_first});
        return responseEntity;
    }

    @RequestMapping(value = "/${objectName?uncap_first}",
            method = RequestMethod.DELETE,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> delete(@CurrentUser  CurrentUserEntity currentUser,
                                             @TableName(tableName ="${objectName?uncap_first}", tableNameDesc = "${tableNameDesc}")String tableName,
                                             @RequestParam(value = "${primaryKey}s") ${primaryKeyType}... ${primaryKey}s) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】根据主键批量删除数据",currentUser.getName());
        try {
            ${objectName?uncap_first}Service.delete(${primaryKey}s);
            resultBean.setData(${primaryKey}s);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据主键批量删除数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据主键批量删除数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据主键批量删除数据成功",currentUser.getName());
        return responseEntity;
    }

    @RequestMapping(value = "/${objectName?uncap_first}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryBean(@CurrentUser CurrentUserEntity currentUser,
                                                @RequestParam(value = "${primaryKey}") ${primaryKeyType} ${primaryKey}) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】根据主键查询数据",currentUser.getName());
        ${objectName} ${objectName?uncap_first} = null;
        try {
            ${objectName?uncap_first} = ${objectName?uncap_first}Service.queryBean(${primaryKey});
            resultBean.setData(${objectName?uncap_first});
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据主键查询数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据主键查询数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据主键查询数据成功 {}",currentUser.getName(),${objectName?uncap_first});
        return responseEntity;
    }

    @RequestMapping(value = "/${objectName?uncap_first}/list",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryList(@CurrentUser  CurrentUserEntity currentUser,
                                                @RequestBody ${objectName} ${objectName?uncap_first}) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        List<${objectName}> ${objectName?uncap_first}s = null;
        logger.debug("管理员【{}】根据条件查询数据",currentUser.getName());
        try {
            ${objectName?uncap_first}s = ${objectName?uncap_first}Service.queryList(${objectName?uncap_first});
            resultBean.setData(${objectName?uncap_first}s);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据条件查询数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据条件查询异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据条件查询成功 {}",currentUser.getName(),${objectName?uncap_first}s);
        return responseEntity;
    }

    @RequestMapping(value = "/${objectName?uncap_first}/page",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryPage(@CurrentUser CurrentUserEntity currentUser,
                                                @RequestBody ${objectName} ${objectName?uncap_first},
                                                @RequestParam(value = "page") Integer page,
                                                @RequestParam(value = "rp") Integer rp) {
        // page 表示第几页，rp 表示每页显示的记录数

        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        PageInfo pageInfo = new PageInfo();
        logger.debug("管理员【{}】根据条件分页查询数据",currentUser.getName());
        try {
            pageInfo.setPages(page);
            pageInfo.setPageSize(rp);
            pageInfo = ${objectName?uncap_first}Service.queryPage(pageInfo,${objectName?uncap_first});
            resultBean.setData(pageInfo);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据条件分页查询数据异常",currentUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据条件分页查询异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据条件分页查询成功 {}",currentUser.getName(),pageInfo);
        return responseEntity;
    }

}
