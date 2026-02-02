// clang-format off

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// add functions
	static AchievementNotifier* sharedState();

	void willSwitchToScene(cocos2d::CCScene*);
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	// add functions
}

[[link(android)]]
class BoomScrollLayerDelegate {
	// add functions
}

[[link(android)]]
class ButtonSprite : cocos2d::CCSprite {
	// add functions
	static ButtonSprite* create(char const* caption);
	static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
		static ButtonSprite* create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
		return create(caption, width, 0, scale, absolute, font, texture, height);
	}
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);

	void setString(char const*);

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::extension::CCScale9Sprite* m_bgSprite;
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
}

[[link(android)]]
class CCCircleWave : cocos2d::CCNode {
}

[[link(android)]]
class CCCircleWaveDelegate {
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	// add functions
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
}

[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	float m_baseScale; // m_originalScale
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}

	void toggle(bool);
	
	CCMenuItemSpriteExtra* m_offButton; // m_normalButton
	CCMenuItemSpriteExtra* m_onButton; // m_selectedButton
	bool m_toggled; // m_isActive
	bool m_notClickable; // m_dontToggle
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// add functions
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
}

[[link(android)]]
class CCTableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
}

[[link(android), depends(CCIndexPath)]]
class CCTableViewCell : cocos2d::CCLayer {
	// add functions
	
	CCTableView* m_tableView;
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// add functions
	virtual void textChanged();

	bool m_selected;
	TextInputDelegate* m_delegate;
	cocos2d::CCLabelBMFont* m_textLabel;
}

[[link(android)]]
class CustomListView : BoomListView {
	virtual void setupList();
	virtual CCTableViewCell* getListCell(char const*);
	virtual void loadCell(CCTableViewCell*, int);
	// add functions
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	bool init(GJGameLevel*);
	// add functions
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	virtual void customSetup();
	virtual void showLayer(bool);
	// add functions

	cocos2d::CCArray* m_coinEffects;
}

[[link(android)]]
class FileOperation {
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {

	FLAlertLayer() {
		m_buttonMenu = nullptr;
		/*m_controlConnected = -1;
		m_ZOrder = 0;
		m_alertProtocol = nullptr;
		m_scene = nullptr;
		m_reverseKeyBack = false;*/
		m_mainLayer = nullptr;
		/*m_scrollingLayer = nullptr;
		m_scrollAction = -1;
		m_containsBorder = false;
		m_noAction = false;*/
	}
	// add functions
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2);
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2, float width);
	static FLAlertLayer* create(char const* title, const char* desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0f);
	}
	virtual void show();

	cocos2d::CCMenu* m_buttonMenu;
	cocos2d::CCNode* m_scene; // m_targetScene
	CCLayer* m_mainLayer;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GameManager : GManager {
	static GameManager* sharedState();

	bool getGameVariable(char const*);


	PlayLayer* m_playLayer;
	bool m_clickedEditor;
	bool m_clickedGarage;
}

[[link(android)]]
class GameObject : CCSpritePlus {
}

[[link(android)]]
class GameToolbox {
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// add functions

	cocos2d::CCLayer* m_mainLayer; // m_internalLayer
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	
	int m_stars;
	int m_originalLevel;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate {
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
}

[[link(android)]]
class GManager : cocos2d::CCNode {
}

[[link(android)]]
class GooglePlayDelegate {
	virtual void googlePlaySignedIn();
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayer, LevelManagerDelegate {
}

[[link(android)]]
class LevelDownloadDelegate {
}

[[link(android)]]
class LevelDeleteDelegate {
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate {
	// add functions
	bool init(GJGameLevel*);
	void setupProgressBars();

	GJGameLevel* m_level;
	cocos2d::CCLabelBMFont* m_lengthLabel;
	cocos2d::CCLabelBMFont* m_downloadsLabel;
	cocos2d::CCLabelBMFont* m_likesLabel;
	cocos2d::CCSprite* m_likesIcon;
	LoadingCircle* m_loadingCircle;
	cocos2d::CCSprite* m_difficultyIcon;
	cocos2d::CCSprite* m_starIcon;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCSprite* m_featuredCoin;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer {
	void onPlay(cocos2d::CCObject* sender);
}

[[link(android)]]
class LevelSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
	// add functions
}

[[link(android)]]
class LevelUpdateDelegate {
}

[[link(android)]]
class LikeItemDelegate {
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// add other functions
	bool init();
	void loadAssets();

	int m_loadStep;
	cocos2d::CCSprite* m_sliderBar;
	float m_sliderGrooveXPos;
	float m_sliderGrooveHeight;
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
class NumberInputDelegate {
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	virtual void customSetup();
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	virtual void customSetup();
}

[[link(android)]]
class PlatformToolbox {
}

[[link(android)]]
class PlayLayer : cocos2d::CCLayer, CCCircleWaveDelegate {

	GJGameLevel* m_level;
}

[[link(android)]]
class RateLevelDelegate {
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler);
	void setValue(float);

	SliderTouchLogic* m_touchLogic;
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	float getValue();
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
	SliderThumb* m_thumb;
}

[[link(android)]]
class TableViewDataSource {
	// add functions
}

[[link(android)]]
class TableViewDelegate {
	// add functions
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// add functions
	static TextArea* create(char const* str, float width, int, cocos2d::CCPoint anchor, char const* font, float lineHeight);
}

[[link(android)]]
class TextInputDelegate {
	// add functions
	virtual void textChanged(CCTextInputNode*);
}