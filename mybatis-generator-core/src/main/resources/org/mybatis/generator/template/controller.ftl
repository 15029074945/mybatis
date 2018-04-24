package ${package};

import com.dingxuan.atom.core.base.BaseResource;
import com.dingxuan.atom.core.base.PageInfo;
import com.dingxuan.atom.core.base.ResultBean;
import com.dingxuan.atom.system.entity.${objectName};
import com.dingxuan.atom.system.entity.SysUser;
import com.dingxuan.atom.system.service.ISysUserService;
import com.dingxuan.atom.system.utils.annotation.CurrentUser;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
 * @date: 2018-04-24 下午2:37
 */
@RestController
@RequestMapping("/api/app")
public class ${objectName}Resource extends BaseResource {

    private static Logger logger = LoggerFactory.getLogger(SysStaffResource.class);

    @Autowired
    private I${objectName}Service ${objectName?uncap_first}Service;

    @RequestMapping(value = "/${moduleName}/${objectName?uncap_first}",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> insert(@RequestBody ${objectName} ${objectName?uncap_first},
                                             @CurrentUser SysUser sysUser) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】开始插入数据",sysUser.getName());
        try {
            sysStaff = sysUserService.insert(sysStaff);
            resultBean.setData(sysStaff);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】插入数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("插入数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】成功插入数据 {}",sysUser.getName(),sysStaff);
        return responseEntity;
    }

    @RequestMapping(value = "/system/sysStaff",
            method = RequestMethod.PUT,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> update(@RequestBody SysStaff sysStaff,
                                             @CurrentUser SysUser sysUser) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】开始更新数据",sysUser.getName());
        try {
            sysStaff = sysUserService.update(sysStaff);
            resultBean.setData(sysStaff);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】更新数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("更新数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】成功更新数据 {}",sysUser.getName(),sysStaff);
        return responseEntity;
    }

    @RequestMapping(value = "/system/sysStaff",
            method = RequestMethod.DELETE,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> delete(@CurrentUser SysUser sysUser,
                                             @RequestParam(value = "ids") Integer... ids) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】根据主键批量删除数据",sysUser.getName());
        try {
            sysUserService.delete(ids);
            resultBean.setData(ids);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据主键批量删除数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据主键批量删除数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据主键批量删除数据成功",sysUser.getName());
        return responseEntity;
    }

    @RequestMapping(value = "/system/sysStaff",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryById(@CurrentUser SysUser sysUser,
                                                @RequestParam(value = "id") Integer id) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        logger.debug("管理员【{}】根据主键查询数据",sysUser.getName());
        SysStaff sysStaff = null;
        try {
            sysStaff = sysUserService.queryById(id);
            resultBean.setData(sysStaff);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据主键查询数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据主键查询数据异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据主键查询数据成功 {}",sysUser.getName(),sysStaff);
        return responseEntity;
    }

    @RequestMapping(value = "/system/sysStaff",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryList(@CurrentUser SysUser sysUser,
                                                @RequestBody SysStaff sysStaff) {
        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        List<SysStaff> sysStaffs = null;
        logger.debug("管理员【{}】根据条件查询数据",sysUser.getName());
        try {
            sysStaffs = sysUserService.queryList(sysStaff);
            resultBean.setData(sysStaffs);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据条件查询数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据条件查询异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据条件查询成功 {}",sysUser.getName(),sysStaffs);
        return responseEntity;
    }

    @RequestMapping(value = "/system/sysStaff",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResultBean> queryPage(@CurrentUser SysUser sysUser,
                                                @RequestBody SysStaff sysStaff,
                                                @RequestParam(value = "page") Integer page,
                                                @RequestParam(value = "rp") Integer rp) {
        // page 表示第几页，rp 表示每页显示的记录数

        ResultBean resultBean = new ResultBean();
        ResponseEntity<ResultBean> responseEntity;
        PageInfo pageInfo = null;
        logger.debug("管理员【{}】根据条件分页查询数据",sysUser.getName());
        try {
            pageInfo.setPage(page);
            pageInfo.setRp(rp);
            pageInfo = sysUserService.queryPage(pageInfo,sysStaff);
            resultBean.setData(pageInfo);
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.OK);
        } catch (Exception e) {
            logger.debug("管理员【{}】根据条件分页查询数据异常",sysUser.getName());
            resultBean = new ResultBean();
            resultBean.setData("根据条件分页查询异常");
            resultBean.setMsg(e.getMessage());
            responseEntity = new ResponseEntity<ResultBean>(resultBean, HttpStatus.UNPROCESSABLE_ENTITY);
        }
        logger.debug("管理员【{}】根据条件分页查询成功 {}",sysUser.getName(),pageInfo);
        return responseEntity;
    }

}