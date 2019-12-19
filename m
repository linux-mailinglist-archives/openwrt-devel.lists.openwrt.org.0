Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE55A127062
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+2CfLrem/8PPa36WgpWAKvcz9XiZLm9njoPS3qPkvw=; b=luReAVSlD0Hp3y
	8CnBUofdLlu6/BXNw5MZhaIqrfbJWoOQNK2I23+iCb0sFr7Ti/HSCiApRdMhpYX9uiW/S4RLX7wWq
	BgX5HxHrPlMs5O4ievOvRntIMXuZYsiuFCuQ23ytfW3hg8XlM0E2idAIjrEARhO9ZFhUSSysh0FEV
	3ddq5cFbNdxr5LBUnSvbiUEE7cGF4gItpxudn5/I8b+Efs7zL6nt+L5BeXZcWQ2bxVGQokQnbHBfW
	PRKwduKe+WaxRvZCPHNxxtgiohMxo7mFAHRmu0Z2ylwTh3gIBGrKRqB3Ihej1DWrI3C7TtVOj3BdG
	xMUs1tZwk3r8LcQLeVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3wk-00018Q-48; Thu, 19 Dec 2019 22:07:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uM-0003gk-0z
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 43E294B98;
 Thu, 19 Dec 2019 23:04:31 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f38bf7f8;
 Thu, 19 Dec 2019 23:04:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:20 +0100
Message-Id: <20191219220421.22206-9-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140434_253084_E11E22ED 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ucert 8/9] fix leaking memory in
 cert_dump_blob
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4ZXMgZm9sbG93aW5nIHZhbGdyaW5kIHJlcG9ydGVkIG1lbW9yeSBsZWFrOgoKIDE4OSBieXRl
cyBpbiAxIGJsb2NrcyBhcmUgZGVmaW5pdGVseSBsb3N0IGluIGxvc3MgcmVjb3JkIDMgb2YgNAog
ICAgYXQgcmVhbGxvYwogICAgYnkgYmxvYm1zZ19mb3JtYXRfanNvbl93aXRoX2NiCiAgICBieSBi
bG9ibXNnX2Zvcm1hdF9qc29uX2luZGVudAogICAgYnkgY2VydF9kdW1wX2Jsb2IgKHVjZXJ0LmM6
Mzg2KQogICAgYnkgY2VydF9kdW1wICh1Y2VydC5jOjQwNSkKICAgIGJ5IG1haW4gKHVjZXJ0LmM6
NzI4KQoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB1
Y2VydC5jIHwgOSArKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS91Y2VydC5jIGIvdWNlcnQuYwppbmRleCBiOWM1Yzg4
OWRkZmEuLjc2OTYwYTIwMGJlMCAxMDA2NDQKLS0tIGEvdWNlcnQuYworKysgYi91Y2VydC5jCkBA
IC0zNzEsNiArMzcxLDcgQEAgY2xlYW5fYW5kX3JldHVybjoKIC8qIGR1bXAgc2luZ2xlIGNoYWlu
IGVsZW1lbnQgdG8gY29uc29sZSAqLwogc3RhdGljIHZvaWQgY2VydF9kdW1wX2Jsb2Ioc3RydWN0
IGJsb2JfYXR0ciAqY2VydFtDRVJUX0FUVFJfTUFYXSkgewogCWludCBpOworCWNoYXIgKmpzb24g
PSBOVUxMOwogCiAJZm9yIChpID0gMDsgaSA8IENFUlRfQVRUUl9NQVg7IGkrKykgewogCQlzdHJ1
Y3QgYmxvYl9hdHRyICp2ID0gY2VydFtpXTsKQEAgLTM4Myw3ICszODQsMTMgQEAgc3RhdGljIHZv
aWQgY2VydF9kdW1wX2Jsb2Ioc3RydWN0IGJsb2JfYXR0ciAqY2VydFtDRVJUX0FUVFJfTUFYXSkg
ewogCQkJZnByaW50ZihzdGRvdXQsICJzaWduYXR1cmU6XG4tLS1cbiVzLS0tXG4iLCAoY2hhciAq
KSBibG9iX2RhdGEodikpOwogCQkJYnJlYWs7CiAJCWNhc2UgQkxPQl9BVFRSX05FU1RFRDoKLQkJ
CWZwcmludGYoc3Rkb3V0LCAicGF5bG9hZDpcbi0tLVxuJXNcbi0tLVxuIiwgYmxvYm1zZ19mb3Jt
YXRfanNvbl9pbmRlbnQoYmxvYl9kYXRhKHYpLCBmYWxzZSwgMCkpOworCQkJanNvbiA9IGJsb2Jt
c2dfZm9ybWF0X2pzb25faW5kZW50KGJsb2JfZGF0YSh2KSwgZmFsc2UsIDApOworCQkJaWYgKCFq
c29uKSB7CisJCQkJRFBSSU5URigiY2Fubm90IHBhcnNlIHBheWxvYWRcbiIpOworCQkJCWNvbnRp
bnVlOworCQkJfQorCQkJZnByaW50ZihzdGRvdXQsICJwYXlsb2FkOlxuLS0tXG4lc1xuLS0tXG4i
LCBqc29uKTsKKwkJCWZyZWUoanNvbik7CiAJCQlicmVhazsKIAkJfQogCX0KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
