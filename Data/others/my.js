/*
(function(){
    //popopoの初期パラメータにratio追加（初期値100）
    tyrano.plugin.kag.tag.popopo.pm.ratio=100;
    //popopoのstart関数を文字列化して取得
    let funcstr=tyrano.plugin.kag.tag.popopo.start.toString();
    //置換でratio初期値設定追加
    funcstr=funcstr.replace(/(""\!==pm.samplerate&&\(popopo\.samplerate=parseInt\(pm\.samplerate\)\);)/,'$1""!==pm.ratio&&(popopo.ratio=parseInt(pm.ratio));')
    //ratio初期値設定追加した関数文字列を再格納
    eval(`tyrano.plugin.kag.tag.popopo.start=${funcstr}`);

    //popopo初期化関数を文字列化して取得
    funcstr=tyrano.plugin.kag.popopo.init.toString();
    //対象箇所2か所は同じ書き方なので、正規表現にg（全体置換）をくっつけてintervalとeveryoneの両方書き換え
    funcstr=funcstr.replace(/"default"===pm\.volume\?pm\._volume=parseInt\(TYRANO\.kag\.config\.defaultSeVolume\)\/100:pm\._volume=parseInt\(pm\.volume\)\/100;/g,'"default"===pm.volume?pm._volume=parseInt(TYRANO.kag.config.defaultSeVolume)/parseInt(pm.ratio):pm._volume=parseInt(pm.volume)/parseInt(pm.ratio);');
    //↑で置換した結果の初期化関数文字列を再格納
    eval(`tyrano.plugin.kag.popopo.init=${funcstr}`);
})();
*/