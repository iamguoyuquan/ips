<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use app\admin\model\Hospital as HospitalModel; 

/**
 * 微信自动回复管理
 *
 * @icon fa fa-circle-o
 */
class Hospital extends Backend
{

    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Hospital');
    }

    /**
     * 编辑
     */
    public function edit($ids = null)
    {
        $row = $this->model->get(['id' => $ids]);
        if (!$row) {
            $this->error(__('No Results were found'));
        }
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                $row->save($params);
                $this->success();
            }
            $this->error();
        }
        return $this->view->fetch();
    }
}
