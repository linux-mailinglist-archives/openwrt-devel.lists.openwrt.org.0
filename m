Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42613127081
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itQKOEIAvgVyEtmuj0kti/UO4T+TC4E/oMVO5VA6U/0=; b=kgWvcg1i5cfwAf
	D2YwtVTsnIlHM8i7ESaOnAKjuR/e6+EysVP/HjMwuyPREUxZP5Ycndv1x3qxJ07l6jGTVGtIjTLg3
	mVyvqA2zt53MEQj/gn+o26IA2xrVxS5mjoA89MZaDPxzs5ZbKarCQEYwMSOJ6NLzA2ZV3o7Qsx8bg
	jqyiIq6JIPNYjs+y42UcOGz3gJcNREcCDBPeyEVSjQ0uPR1WJfikfMHJ0/pHZjnww/IzJZkM26LvE
	TTP42+RN3Ryu90pM7KkecvHDxrLJIfP/kTNz0ugUZ5PQxDEu0PIWlobYyf0mlXRxmCzEjj6mfmUgs
	8J6+oxAmLHSrTOjpHu/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii44Q-0001fW-Lt; Thu, 19 Dec 2019 22:14:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41L-00055N-R8
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5EADC4BD2;
 Thu, 19 Dec 2019 23:11:46 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 491a31bb;
 Thu, 19 Dec 2019 23:11:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:22 +0100
Message-Id: <20191219221125.22646-14-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141148_071806_70A3D887 
X-CRM114-Status: UNSURE (   6.77  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 13/16] ubus_common: remove duplicate
 ARRAY_SIZE and add missing include
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

QVJSQVlfU0laRSBpcyBhdmFpbGFibGUgZnJvbSBsaWJ1Ym94L3V0aWxzLmguCgpTaWduZWQtb2Zm
LWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHVidXNfY29tbW9uLmggfCA2
ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS91YnVzX2NvbW1vbi5oIGIvdWJ1c19jb21tb24uaAppbmRleCA1ZTRkMGFk
OTRmOGYuLjUwMmU1YzQ4NGE3NSAxMDA2NDQKLS0tIGEvdWJ1c19jb21tb24uaAorKysgYi91YnVz
X2NvbW1vbi5oCkBAIC0xNCwxMyArMTQsMTEgQEAKICNpZm5kZWYgX19VQlVTX0NPTU1PTl9ICiAj
ZGVmaW5lIF9fVUJVU19DT01NT05fSAogCisjaW5jbHVkZSA8c3RkYm9vbC5oPgorCiAjZGVmaW5l
IFVCVVNfU0lHTkFUVVJFX01FVEhPRAkoQkxPQk1TR19UWVBFX0xBU1QgKyAxKQogI2RlZmluZSBV
QlVTX1NJR05BVFVSRV9FTkQJCShCTE9CTVNHX1RZUEVfTEFTVCArIDIpCiAKLSNpZm5kZWYgQVJS
QVlfU0laRQotI2RlZmluZSBBUlJBWV9TSVpFKHgpIChzaXplb2YoeCkgLyBzaXplb2YoKHgpWzBd
KSkKLSNlbmRpZgotCiBzdGF0aWMgaW5saW5lIGJvb2wgdWJ1c19zdHJtYXRjaF9sZW4oY29uc3Qg
Y2hhciAqczEsIGNvbnN0IGNoYXIgKnMyLCBpbnQgKmxlbikKIHsKIAlmb3IgKCpsZW4gPSAwOyBz
MVsqbGVuXSA9PSBzMlsqbGVuXTsgKCpsZW4pKyspCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
