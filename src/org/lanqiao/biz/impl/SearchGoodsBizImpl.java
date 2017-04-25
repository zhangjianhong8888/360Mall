package org.lanqiao.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.lanqiao.biz.ISearchGoodsBiz;
import org.lanqiao.dao.ISearchGoodsMapper;
import org.lanqiao.po.Goods;
import org.lanqiao.po.Shopping;
import org.lanqiao.po.UserInfo;
import org.springframework.stereotype.Service;
@Service
public class SearchGoodsBizImpl implements ISearchGoodsBiz {

	@Resource
	private ISearchGoodsMapper isgm;
	
	@Override
	public List<Goods> findAllGoodsByStr(Map<String, String> map) {
		List<Goods> list = isgm.findAllGoodsByStr(map);
		return list;
	}
	@Override
	public int findCount(String inreseach) {
		return isgm.findCount(inreseach);
	}
	@Override
	public Goods searchOneGood(Goods goods) {
		Goods good = isgm.searchOneGood(goods);
		return good;
	}
	@Override
	public int addGoodsToShopCar(Shopping shopping) {
		Shopping shop = isgm.findShoppingByAll(shopping);
		if(shop==null){
			isgm.addGoodsToShopCar(shopping);
			return 1;
		}else{
			shop.setShonumber(
					Integer.parseInt(shop.getShonumber())+Integer.parseInt(shopping.getShonumber())
					+"");
			isgm.updateGoodsToShopCar(shop);
			return 0;
		}
	}
	@Override
	public UserInfo loginToShop(UserInfo userInfo) {
		return isgm.loginToShop(userInfo);
	}
	@Override
	public List<String> findAllgoodName() {
		return isgm.findAllgoodName();
	}
	@Override
	public List<Goods> findAllGoodsByStrASC(Map<String, String> map) {
		return isgm.findAllGoodsByStrASC(map);
	}

	@Override
	public int selectCount(UserInfo userInfo) {
		return isgm.selectCount(userInfo);
	}
	

}
