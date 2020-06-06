package com.qfedu.market.service;

import com.qfedu.market.entity.Evaluation;
import java.util.List;

/**
 * (Evaluation)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface EvaluationService {

    /**
     * 通过ID查询单条数据
     *
     * @param eid 主键
     * @return 实例对象
     */
    Evaluation queryById(Integer eid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Evaluation> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param evaluation 实例对象
     * @return 实例对象
     */
    Evaluation insert(Evaluation evaluation);

    /**
     * 修改数据
     *
     * @param evaluation 实例对象
     * @return 实例对象
     */
    Evaluation update(Evaluation evaluation);

    /**
     * 通过主键删除数据
     *
     * @param eid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer eid);

}