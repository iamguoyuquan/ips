<?php

namespace app\admin\model;

use think\Model;

class MedicalPatientDoctor extends Model
{

    public $name = 'medical_patient_doctor';
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    function patient(){
        return $this->belongsTo('medical_patient','patient_id','id',[],'LEFT')->setEagerlyType(0);
    }
    function doctor(){
        return $this->belongsTo('medical_doctor','doctor_id','id',[],'LEFT')->setEagerlyType(0);
    }
}
