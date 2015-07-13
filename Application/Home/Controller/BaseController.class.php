<?php 
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
	public function __construct(){
		parent::__construct();
		/* if(!$this->checkStatus()){
		    $loginMarked=md5(C('AUTH_Home_TOKEN'));
			if(isset($_SESSION[$loginMarked])){
				unset($_SESSION[$loginMarked]);
			}
		}  */
		$this->menu();
	}
	private function menu(){
		$courses=M('programmeslist')->field('id,etitle,title')->order('sid desc,id desc')->select();
		$menu=array();
		$menu['courses']=$courses;
		
		$tutors=M('tutorslist')->field('id,title')->order('sid desc,id desc')->select();
	
		$menu['tutors']=$tutors;
		
		$this->assign('menu',$menu);
	}
    private  function checkStatus(){
      	 $loginMarked=md5(C('AUTH_Home_TOKEN'));
      	 
      	 if(!$_SESSION[$loginMarked]){
      	 	return false;
      	 }
      	 $cookie=explode("_",cookie($loginMarked));
      	 $outtime=C('LOGIN_Home_TIMEOUT');
      	 
      	 if(intval(time())>($outtime+end($cookie)))return false;
      	 if($cookie[0]!=$loginMarked)return false;
      	 cookie($loginMarked,$cookie[0].'_'.time(),0,'/');
      	 return true;
    }

	protected function language() {
        // language
        $lang = I('get.lang', 'zh');

        if ('zh' == $lang) {
            $this->assign ('text_header_title', '創富易業務轉讓有限公司');
            $this->assign ('text_chaxunrexian', '查詢熱線');
            $this->assign ('text_fip', '行業，投資金額，利潤');
            $this->assign ('text_diqu', '地區');
            $this->assign ('text_shuruguanjianzi', '輸入關鍵字');
            $this->assign ('text_shouye', '首頁');
            $this->assign ('text_guanyuwomen', '關于我們');
            $this->assign ('text_chuangfuxuzhi', '創富須知');
            $this->assign ('text_maijiashougouyewu', '買家收購業務');
            $this->assign ('text_maijiachurangyewu', '賣家出讓業務');
            $this->assign ('text_xianzhengchurangyewu', '現正出讓業務');
            $this->assign ('text_yingshangxuzhi', '營商須知');
            $this->assign ('text_xiangguanlianjie', '相關連結');
            $this->assign ('text_lianluowomen', '聯絡我們');
            $this->assign ('text_gongsijianjie', '公司簡介');
            $this->assign ('text_jiazhiguan', '我們的價值觀');
            $this->assign ('text_fuwufanwei', '服務範圍');
            $this->assign ('text_chuangfuxuzhi', '創富須知');
            $this->assign ('text_chuangfuzuolaoban', '創富做老板');
            $this->assign ('text_chuangfumoshi', '創富模式之比較');
            $this->assign ('text_heweiyewuzhuanrang', '何謂「業務轉讓」');
            $this->assign ('text_weihexuanzeyewuzhuanrang', '爲何選擇業務轉讓');
            $this->assign ('text_changjianwenti', '常見問題');
            $this->assign ('text_maijiashougouchengxu', '買家收購程序');
            $this->assign ('text_weihexuanzewomen', '爲何選擇我們');
            $this->assign ('text_maijiachaxun', '買家查詢');
            $this->assign ('text_maijiachurangchengxu', '賣家出讓程序');
            $this->assign ('text_yewuguzhi', '業務估值');
            $this->assign ('text_weihexuanzewomen', '爲何選擇我們');
            $this->assign ('text_maijiachaxun', '賣家查詢');
            $this->assign ('text_kaiyeziliaoku', '開業資料庫');
            $this->assign ('text_yingyeziliaoku', '營業資料庫');
            $this->assign ('text_copyright', '&copy; 2005 - 2015創富易業務轉讓有限公司 天域國際投資投資成員');
            $this->assign ('text_banquansuoyou', '版權所有 不得轉載');
            $this->assign ('text_banquanshengming', '版權聲明');
            $this->assign ('text_mianzetiaokuan', '免責條款');
            $this->assign ('text_lianluowomen', '聯絡我們');
            $this->assign ('text_gerensiyinzhengce', '個人私隱政策');

            $this->assign ('text_daihaomingcheng', '代號名稱');
            $this->assign ('text_churangxiangmu', '出讓項目');
            $this->assign ('text_cankaolirun', '參考利潤');
            $this->assign ('text_baokuocunhuo', '包括存貨其他');
            $this->assign ('text_huibenqi', '回本期(月)');
            $this->assign ('text_dingjia', '定價(HKD)');
            $this->assign ('text_gongkuan', '供款(月)');
            $this->assign ('text_mianji', '面積(平方尺)');
            $this->assign ('text_zujin', '租金(月)');
            $this->assign ('text_canyuchengdu', '參與程度');
            $this->assign ('text_xiangmuqingkuang', '項目情況');

            $this->assign ('text_dingjia', '定價');
            $this->assign ('text_cankaolirun', '參考利潤(每月)');

            $this->assign ('text_touzishouxuan', '投資首選');
            $this->assign ('text_chaozhituijie', '筍盤推介');
            $this->assign ('text_xiaobenchuangye', '小本創業');
            $this->assign ('text_rementuijie', '熱門推介');
            $this->assign ('text_jingxuantuijie', '精選推介');
        }
        else {
            $this->assign ('text_header_title', '创富易业务转让有限公司');
            $this->assign ('text_chaxunrexian', '查询热线');
            $this->assign ('text_fip', '行业，投资金额，利润');
            $this->assign ('text_diqu', '地区');
            $this->assign ('text_shuruguanjianzi', '输入关键字');
            $this->assign ('text_shouye', '首页');
            $this->assign ('text_guanyuwomen', '关于我们');
            $this->assign ('text_chuangfuxuzhi', '创富须知');
            $this->assign ('text_maijiashougouyewu', '买家收购业务');
            $this->assign ('text_maijiachurangyewu', '卖家出让业务');
            $this->assign ('text_xianzhengchurangyewu', '现正出让业务');
            $this->assign ('text_yingshangxuzhi', '营商须知');
            $this->assign ('text_xiangguanlianjie', '相关连结');
            $this->assign ('text_lianluowomen', '联络我们');
            $this->assign ('text_gongsijianjie', '公司简介');
            $this->assign ('text_jiazhiguan', '我们的价值观');
            $this->assign ('text_fuwufanwei', '服务范围');
            $this->assign ('text_chuangfuxuzhi', '创富须知');
            $this->assign ('text_chuangfuzuolaoban', '创富做老板');
            $this->assign ('text_chuangfumoshi', '创富模式之比较');
            $this->assign ('text_heweiyewuzhuanrang', '何谓「业务转让」');
            $this->assign ('text_weihexuanzeyewuzhuanrang', '为何选择业务转让');
            $this->assign ('text_changjianwenti', '常见问题');
            $this->assign ('text_maijiashougouchengxu', '买家收购程序');
            $this->assign ('text_weihexuanzewomen', '为何选择我们');
            $this->assign ('text_maijiachaxun', '买家查询');
            $this->assign ('text_maijiachurangchengxu', '卖家出让程序');
            $this->assign ('text_yewuguzhi', '业务估值');
            $this->assign ('text_weihexuanzewomen', '为何选择我们');
            $this->assign ('text_maijiachaxun', '卖家查询');
            $this->assign ('text_kaiyeziliaoku', '开业资料库');
            $this->assign ('text_yingyeziliaoku', '营业资料库');
            $this->assign ('text_copyright', '&copy; 2005 - 2015创富易业务转让有限公司 天域国际投资投资成员');
            $this->assign ('text_banquansuoyou', '版权所有 不得转载');
            $this->assign ('text_banquanshengming', '版权声明');
            $this->assign ('text_mianzetiaokuan', '免责条款');
            $this->assign ('text_lianluowomen', '联络我们');
            $this->assign ('text_gerensiyinzhengce', '个人私隐政策');

            $this->assign ('text_daihaomingcheng', '代号名称');
            $this->assign ('text_churangxiangmu', '出让项目');
            $this->assign ('text_cankaolirun', '参考利润');
            $this->assign ('text_baokuocunhuo', '包括存货其他');
            $this->assign ('text_huibenqi', '回本期(月)');
            $this->assign ('text_dingjia', '定价(HKD)');
            $this->assign ('text_gongkuan', '供款(月)');
            $this->assign ('text_mianji', '面积(平方尺)');
            $this->assign ('text_zujin', '租金(月)');
            $this->assign ('text_canyuchengdu', '参与程度');
            $this->assign ('text_xiangmuqingkuang', '项目情况');

            $this->assign ('text_dingjia', '定价');
            $this->assign ('text_cankaolirun', '参考利润(每月)');

            $this->assign ('text_touzishouxuan', '投资首选');
            $this->assign ('text_chaozhituijie', '超值推介');
            $this->assign ('text_xiaobenchuangye', '小本创业');
            $this->assign ('text_rementuijie', '热门推介');
            $this->assign ('text_jingxuantuijie', '精选推介');
        }

        $this->assign ('lang', $lang);
    }
}
?>