Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C75114245
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 22:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eimkoBDl99Jkw/V+147jAjiJE8ZyoOP/lnN6y0nomkc=; b=NLuaTJO5kg8Gmr
	l9DwAlGjMIUw4voJ2h0ewix5XoXY6z8p7UeShGCEj+ybFgHK6Qc3975qYChM0Y54ktFwSvruJyOQc
	Xvqic8bQk+bOJ3qFxvQ52EhF3QRVGJJIAtgN2D1qpcT/hVihZkNQ6B7JDgurv6nIUbjTJVMmyxbLP
	Z6t82XKPjwnu/WUiwvKxCu2tUB8ICNN/VOC2D5DtonKsRdcbCidm3T8yISP+BCP6DJ1rIu7DgWoWf
	21kWjb9/D8fMPKeVqAvXYVoMc46jZM9ShL2Qr17KTvn93CX+1Sz4GMEPmDeusGfThKzKvtzRY+JVd
	0/7U22piPGxvroOhcaVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNX5-00036i-5X; Sun, 05 May 2019 20:14:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNNWo-0002yM-2G
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 20:14:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4C8703EE6;
 Sun,  5 May 2019 22:14:26 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8fd6fd92;
 Sun, 5 May 2019 22:14:24 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 22:14:18 +0200
Message-Id: <1557087260-32680-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_131430_354441_D2B2C366 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 0/2] [RFC] build: allow selective per device
 initramfs
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Stijn Segers <foss@volatilesystems.org>,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpJJ3ZlIGFkZGVkICJsYW50aXEveHJ4MjAwOiBlbmFibGUgaW5pdHJhbWZzIGltYWdlcyIg
aW50byBteSBzdGFnaW5nIHRyZWVbMV0sCndoZXJlIHRoaXMgcGF0Y2ggdHJpZXMgdG8gZml4IHNo
b3J0Y29taW5nIG9mIHRoZSBjb21taXQgZWFlNmNhYzZhMyAoImxhbnRpcToKYWRkIHN1cHBvcnQg
Zm9yIEFWTSBGUklUWiFCb3ggNzM2MiBTTCIpLCBhcyBvbmUgbmVlZHMgYW4gaW5pdHJhbWZzIGlt
YWdlIHRvCmZsYXNoIE9wZW5XcnQgZnJvbSBzdG9jayBmaXJtd2FyZSAoYXMgZGVzY3JpYmVkIGlu
IHRoZSBjb21taXQgbG9nKS4gVGhpcyBwYXRjaAppcyBzaW1wbHkgZ29pbmcgdG8gZW5hYmxlIGJ1
aWxkIG9mIGluaXRyYW1mcyBpbWFnZXMgZm9yIGFsbCBkZXZpY2VzIHVuZGVyCmxhbnRpcSdzIHhy
eDIwMCBzdWJ0YXJnZXQuCgpUaGVuIEkndmUgc3RhcnRlZCBhIHJldmlldyBvZiAicmFtaXBzOiBB
ZGQgc3VwcG9ydCBmb3IgSGVhZCBXZWJsaW5rCkhEUk0yMDAiWzJdLCB3aGVyZSBpdCdzIGFwcGFy
ZW50LCB0aGF0IHRoaXMgZGV2aWNlIG5lZWRzIGluaXRyYW1mcyBhcyB3ZWxsICwKZXhjZXJwdCBm
cm9tIGNvbW1pdCBtZXNzYWdlOgoKIEluIG9yZGVyIHRvIGluc3RhbGwgT3BlbldSVCwgeW91IGZp
cnN0IG5lZWQgdG8gY29tcGlsZSBhbiBpbml0cmFtZnMKIChyYW1kaXNrKS1pbWFnZSBmb3IgdGhl
IGRldmljZS4gT25jZSB0aGUgaW1hZ2UgaXMgcmVhZHksIHlvdSBuZWVkIHRvIGRvCiB0aGUgZm9s
bG93aW5nOgoKSSBmaW5kIGl0IHF1aXRlIHdlaXJkIHRvIGRlbWFuZCBhbnkga2luZCBvZiBjb21w
aWxhdGlvbiBieSB0aGUgZW5kLXVzZXJzLCBidXQKSSBhbHNvIGZpbmQgaXQgcXVpdGUgd2FzdGVm
dWwgdG8gYnVpbGQgaW5pdHJhbWZzIGltYWdlcyBmb3IgYWxsIGRldmljZXMgdW5kZXIKcGFydGlj
dWxhciB0YXJnZXQgKGxhbnRpcS94cngyMDAgYW5kIHJhbWlwcy9tdDc2MjApLCBqdXN0IGJlY2F1
c2Ugb25lIChvcgptaW5vcml0eSkgb2YgZGV2aWNlIG5lZWRzIHRoaXMgaW1hZ2UuCgpTbyBJJ3Zl
IGxvb2tlZCBhdCB0aGUgcG9zc2libGUgc29sdXRpb25zLCBhbmQgd2l0aCB0aGUgbGltaXRlZCB0
aW1lIG9uIGhhbmQKSSd2ZSBjb21lIHVwIHdpdGggdGhlIGZvbGxvd2luZyBwYXRjaCBzZXJpZXMu
IEknbSBzdXJlLCB0aGF0IHRoaXMgaXMga2luZCBvZiBhCndlaXJkIHdvcmthcm91bmQsIGJ1dCBJ
IGZpbmQgaXQgbGVzcyBvYnRydXNpdmUgdGhlbiBidWlsZGluZyBvZiBpbml0cmFtZnMKaW1hZ2Vz
IGZvciBhbGwgdGFyZ2V0cywgd2l0aCBubyBhcHBhcmVudCB1c2UuCgpFc3NlbnRpYWwgc29sdXRp
b24gd291bGQgYmUgc29tZXRoaW5nIGxpa2UgaW1hZ2UgcmVjaXBlIGZvciBpbml0cmFtZnMsIGJ1
dApzaW5jZSBpdCdzIHF1aXRlIGNvbXBsaWNhdGVkIHRvcGljIGl0IHdvdWxkIG5lZWQgYSBsb3Qg
bW9yZSB0aW1lIHRvIGZpeCBpdApwcm9wZXJseS4KClNvIEknbSB3b25kZXJpbmcgaWYgc3VjaCB3
b3JrYXJvdW5kIHRvIGF2b2lkIGJ1aWxkaW5nIG9mIHVubmVjZXNzYXJ5IGluaXRyYW1mcwppbWFn
ZXMgd291bGQgYmUgYWNjZXB0YWJsZSwgb3IgdW50aWwgdGhlcmUncyBhIHByb3BlciBzb2x1dGlv
biwgd2Ugc2hvdWxkCnNpbXBseSBsaXZlIHdpdGggdGhlIGBGRUFUVVJFUyArPSByYW1kaXNrYCBi
YXNlZCAic29sdXRpb24iLgoKLS0geW5lenoKCjEuIGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnL2Iw
ZDE0M2NmNmQzOTA1CjIuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5NDky
Ny8KClBldHIgxaB0ZXRpYXIgKDIpOgogIGJ1aWxkOiBhbGxvdyBzZWxlY3RpdmUgcGVyIGRldmlj
ZSBidWlsZGluZyBvZiBpbml0cmFtZnMKICBsYW50aXE6IGltYWdlOiBidWlsZCBpbml0cmFtZnMg
b25seSBmb3IgRlJJVFo3MzYyU0wKCiBjb25maWcvQ29uZmlnLWltYWdlcy5pbiAgICAgICAgICAg
ICAgfCAgMiArLQogaW5jbHVkZS9pbWFnZS5tayAgICAgICAgICAgICAgICAgICAgIHwgMTEgKysr
KysrKysrKy0KIHNjcmlwdHMvdGFyZ2V0LW1ldGFkYXRhLnBsICAgICAgICAgICB8ICAxICsKIHRh
cmdldC9Db25maWcuaW4gICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwogdGFyZ2V0L2xpbnV4
L2xhbnRpcS9pbWFnZS9NYWtlZmlsZSAgIHwgIDEgKwogdGFyZ2V0L2xpbnV4L2xhbnRpcS94cngy
MDAvdGFyZ2V0Lm1rIHwgIDIgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
