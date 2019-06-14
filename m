Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E2445B2B
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 13:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HayNPJabpE50l9QMMzu6OouvKZLio3hJ+Gb7HIk67P0=; b=QVbIRjRIoSSK6t
	/rbhqwB/Amby3CtdyQ9YFFsRQtiZvWBkksF2If9F9smJiqC0EPt9iZFqwepLwACqtXQafIJLfaIaN
	Y5W7rmCO/bSoeIFunZb/hxxEpjGwD1AKUCXJRBr/4SP3SxDXRTMiQaoWaFYvh6cixDBMKfnayxELr
	3kw/pTo8zTx8PoS5hr1oa9ORsg4glgxBS79DEFiIpcmZTswPjfIoPpXGs3f0xlrDc/Wzw+gbkdePs
	c7soxtLI4J1fWVHpkQ4tkVwokD9M2mKJ1l0al/YVCRxZ5VaWzuN3unNu27A/tc0rAmDPbC31yxqCH
	0uKQupjZqV3m0LLTFDag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbk6Q-00089P-VT; Fri, 14 Jun 2019 11:10:38 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbk5w-0006XB-2L
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 11:10:11 +0000
Received: from [192.168.180.1] (port=48390 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hbk5g-0003tl-2O
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 13:09:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id A296F2803A0;
 Fri, 14 Jun 2019 13:09:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Jun 2019 13:09:47 +0200
Message-Id: <20190614110947.10540-4-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190614110947.10540-1-avalentin@marcant.net>
References: <20190614110947.10540-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041008_295006_BAEBF887 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] network/config/xfrm: add
 host-dependency for xfrm interface parent
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWRkIHByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgdG8gYWRkIGEgZGVwZW5kZW5jeSB0byB0aGUg
dHVubGluayBpbnRlcmZhY2UKClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBWYWxlbnRpbiA8YXZhbGVu
dGluQG1hcmNhbnQubmV0PgotLS0KIHBhY2thZ2UvbmV0d29yay9jb25maWcveGZybS9maWxlcy94
ZnJtLnNoIHwgMTkgKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL2Nv
bmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2ggYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmls
ZXMveGZybS5zaAppbmRleCBkZjI4ZDM4NjEzLi40NzExYmYyZjU1IDEwMDc1NQotLS0gYS9wYWNr
YWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAorKysgYi9wYWNrYWdlL25ldHdv
cmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaApAQCAtMTQsMjQgKzE0LDI3IEBAIHByb3RvX3hm
cm1fc2V0dXAoKSB7CiAJbG9jYWwgdHVubGluayBpZmlkIG10dSB6b25lCiAJanNvbl9nZXRfdmFy
cyB0dW5saW5rIGlmaWQgbXR1IHpvbmUKIAotCXByb3RvX2luaXRfdXBkYXRlICIkY2ZnIiAxCi0K
LQlwcm90b19hZGRfdHVubmVsCi0JanNvbl9hZGRfc3RyaW5nIG1vZGUgIiRtb2RlIgotCWpzb25f
YWRkX2ludCBtdHUgIiR7bXR1Oi0xMjgwfSIKLQogCVsgLXogIiR0dW5saW5rIiBdICYmIHsKIAkJ
cHJvdG9fbm90aWZ5X2Vycm9yICIkY2ZnIiBOT19UVU5MSU5LCiAJCXByb3RvX2Jsb2NrX3Jlc3Rh
cnQgIiRjZmciCiAJCWV4aXQKIAl9Ci0JanNvbl9hZGRfc3RyaW5nIGxpbmsgIiR0dW5saW5rIgot
CiAJWyAteiAiJGlmaWQiIF0gJiYgewogCQlwcm90b19ub3RpZnlfZXJyb3IgIiRjZmciIE5PX0lG
SUQKIAkJcHJvdG9fYmxvY2tfcmVzdGFydCAiJGNmZyIKIAkJZXhpdAogCX0KKworCSggcHJvdG9f
YWRkX2hvc3RfZGVwZW5kZW5jeSAiJGNmZyIgJycgIiR0dW5saW5rIiApCisKKwlwcm90b19pbml0
X3VwZGF0ZSAiJGNmZyIgMQorCisJcHJvdG9fYWRkX3R1bm5lbAorCWpzb25fYWRkX3N0cmluZyBt
b2RlICIkbW9kZSIKKwlqc29uX2FkZF9pbnQgbXR1ICIke210dTotMTI4MH0iCisKKwlqc29uX2Fk
ZF9zdHJpbmcgbGluayAiJHR1bmxpbmsiCisKIAlqc29uX2FkZF9vYmplY3QgJ2RhdGEnCiAJWyAt
biAiJGlmaWQiIF0gJiYganNvbl9hZGRfaW50IGlmaWQgIiRpZmlkIgogCWpzb25fY2xvc2Vfb2Jq
ZWN0Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
