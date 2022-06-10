package cn.tedu.csmall.product.webapi.mapper;

import cn.tedu.csmall.pojo.entity.Category;
import org.springframework.stereotype.Repository;

/**
 * 处理“类别”数据的持久层接口
 */
@Repository
public interface CategoryMapper {

    /**
     * 插入“类别”数据
     * @param category 类别
     * @return 受影响的行数
     */
    int insert(Category category);

}
