
TODO:必要なもの

#以下の情報が処理できるものを考える
#■文字数（スペース込み）
#■文字数（スペース無視）
#■行数
#■段落数
#■原稿用紙換算(400x?枚)
#改行とか特殊文字はどうやって取得すればいいかをググる

#参考情報:Javascriptの場合
<!--

function count(f, val) {
	var s, l, r, p, m;
	if (!val) return;

	s = val.replace(/\n/g, "");
	f.spa.value = s.length;

	l = val.replace(/\s|　/g, "");
	f.let.value = l.length;

	r = val.match(/\n/g);
	f.ret.value = r && r.length + 1 || "1";

	p = val.match(/\n(?:　|\s+|「|『|＜|《|〈|≪|（|“|‘|\(|\"|\')./g);
	f.par.value = p && p.length + 1 || "1";

	m = Math.ceil(s.length / 400);
	f.man.value = m;
}

//-->
