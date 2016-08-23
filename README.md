# NHFRadioButton
<h2>介绍</h2>
<p>针对本地普通数据的缓存：基本数据类型、NSDictory、NSArray等</p>
<h2>安装</h2>
<ul>
<li>pod 'NhfCacheDeal'</li>
<li>手动下载然后将文件夹拖至工程中即可</li>
</ul>
<h2>使用方法</h2>
/**
 *功能：测试是否记录了某个键
 *@param key键名
 *return true时为登记了，false为没有登记
 */</br>
-(BOOL)isRegisterKey:(NSString*)key;

/**
 *功能：保存字符串数据
 *@param stringdata字符串数据
 *@param key键数据
 */</br>
-(void)saveStringValue:(NSString*)stringdata key:(NSString*)key;

/**
 *功能：获取指定键值
 *@param key键名
 */
-(id)getStringKey:(NSString*)key;

/**
 *功能：删除指定键值
 *@param key键名
 */</br>
-(void)removeDataKey:(NSString*)key;

/**
 *功能：保存对象到缓存中去
 *@param object对象
 *@param key键名
 */</br>
-(void)saveObject:(id)object key:(NSString*)key;

/**
 *功能：获取指定键的对象
 *@param key指定键名
 *@return 返回对象
 */</br>
-(id)getObject:(NSString*)key;
</br>
+ (NSArray *)getArrayByCacheKey:(NSString *)cacheKey sp:(NSString *)sp;
</br>
+ (void)saveArrayByCacheKey:(NSString *)cacheKey objects:(NSArray *)objects sp:(NSString *)sp;

