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
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	float m_baseScale; // m_originalScale
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(android), depends(CCIndexPath)]]
class CCTableViewCell : cocos2d::CCLayer {
	// add functions
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// add functions
	virtual void textChanged();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// add functions
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
	// add functions
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2);
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2, float width);
	virtual void show();

	cocos2d::CCMenu* m_buttonMenu;
	CCLayer* m_mainLayer;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GameManager : GManager {

	PlayLayer* m_playLayer;
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// add functions

	cocos2d::CCLayer* m_mainLayer; // m_internalLayer
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
}

[[link(android)]]
class GManager : cocos2d::CCNode {
}

[[link(android)]]
class GooglePlayDelegate {
	virtual void googlePlaySignedIn();
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
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
}

[[link(android)]]
class PlayLayer : cocos2d::CCLayer : CCCircleWaveDelegate {

	GJGameLevel* m_level;
}

[[link(android)]]
class RateLevelDelegate {
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler);
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
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