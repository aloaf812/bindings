// clang-format off

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	// add members
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	// add functions

	cocos2d::CCMenu* m_buttonMenu;
	CCLayer* m_mainLayer;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GooglePlayDelegate {
	virtual void googlePlaySignedIn();
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene();

	TodoReturn node();
	void onAchievements(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender);
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void openOptions(bool);
	void showGCQuestion();
	void showPirateMessage();
	void syncPlatformAchievements(float);
	void tryShowAd(float);
	void willClose();

	virtual bool init();
	virtual void keyBackClicked();
	virtual void googlePlaySignedIn();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class TextInputDelegate {
	// add functions
}