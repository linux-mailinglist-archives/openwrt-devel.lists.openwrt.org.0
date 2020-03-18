Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A5518A821
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VjS5aIYQSQ5suTJ3NiBiXwMXY5XPQdYRy2MyFMevDU=; b=imw+nCwybYOwUp
	rHzCJCAOKnWpMeqVYBj5Sd/WxKXpnDOU01bZdEo4JaQznQhGFT2VCMnRy938TJ7xHTcZ/3MOPfeqs
	9dqliSjbNn4kbLke2x62NArUNf+hb+PuYky8AkN+2/K5XEa0dvpB5R/tklpmoW3/ScYSvV54Wkdi2
	qnCdrBHeppMqWBluVuLbYmzqwYPF36yq2Pc+Pcn69PDrtrf84xlUBCCPpjBWzBf1rdkJDDsRFDxxx
	p+ItI39aoSvpXyhKeQV8VaaSNJGzWve/JgW9VBj7k5AqIYzT4g5mjdq3ZzL2VIyIiloAdIWTpaFMr
	EBAwg4auSgrCisGeg3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhBC-0008IN-8z; Wed, 18 Mar 2020 22:28:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA7-0006w5-Oh
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 219924C1F;
 Wed, 18 Mar 2020 23:27:39 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9595596b;
 Wed, 18 Mar 2020 23:27:25 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:10 +0100
Message-Id: <20200318222713.1495-7-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152743_959051_B7CF5743 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/9] sunxi: a53: add support for Olimex
 A64-Olinuxino
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

U3BlY2lmaWNhdGlvbnM6CgogU29DOiBBbGx3aW5uZXIgQTY0ICgxLjIgR0h6IFF1YWQtQ29yZSBB
Uk0gQ29ydGV4LUE1MyA2NC1iaXQpCiBSQU06IDFHQiBvciAyR0IgUkFNIEREUjNMIEAgNjcyTWh6
CiBGbGFzaDogMC80LzE2R0IgZU1NQyBmbGFzaCBtZW1vcnkgZm9yIHN0b3JhZ2UgYW5kIGJvb3QK
IE1pY3JvU0QgY2FyZCBjb25uZWN0b3IgZm9yIGNhcmRzIHVwIHRvIDMyR0IKIERlYnVnOiBzZXJp
YWwgVUFSVCBkZWJ1ZyBoZWFkZXIgd2l0aCAwLjEiIHBpbnMKIFdpcmVkIGNvbm5lY3Rpdml0eTog
MTAvMTAwLzEwMDBNYnBzIEdiRSBFdGhlcm5ldAogV2lyZWxlc3MgY29ubmVjdGl2aXR5OiBvbi1i
b2FyZCBSVEw4NzIzQlMgMVQxUiA4MDIuMTFiZ24gV2lGaSBhbmQKICAgICAgICAgICAgICAgICAg
ICAgICAgQmx1ZXRvb3RoIDQuMCBtb2R1bGUgd2l0aCBidWlsdC1pbiBhbnRlbm5hCiAgICAgICAg
ICAgICAgICAgICAgICAgIChvbmx5IGF2YWlsYWJsZSBpbiB0aGUgQTY0LU9MaW51WGluby0xRzRH
VykKCkZsYXNoaW5nIGluc3RydWN0aW9uczoKCiBTdGFuZGFyZCBzdW54aSBTRCBjYXJkIGluc3Rh
bGxhdGlvbiBwcm9jZWR1cmUgLSBjb3B5IGltYWdlIHRvIFNEIGNhcmQsCiBpbnNlcnQgaW4gaW50
byBTRCBjYXJkIHNsb3Qgb24gdGhlIGRldmljZSBhbmQgYm9vdC4KCktub3duIGlzc3VlczoKCiBX
aXJlbGVzcyBkb2Vzbid0IHdvcmsgcHJvcGVybHkgdmlhIG5ldGlmZC4KClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L3N1bnhpL2lt
YWdlL2NvcnRleC1hNTMubWsgfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9zdW54aS9pbWFnZS9jb3J0ZXgtYTUz
Lm1rIGIvdGFyZ2V0L2xpbnV4L3N1bnhpL2ltYWdlL2NvcnRleC1hNTMubWsKaW5kZXggNzlkZDQz
YzYwZmEzLi45Njg4NWNmOTI2MTIgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9zdW54aS9pbWFn
ZS9jb3J0ZXgtYTUzLm1rCisrKyBiL3RhcmdldC9saW51eC9zdW54aS9pbWFnZS9jb3J0ZXgtYTUz
Lm1rCkBAIC0zOCw2ICszOCwxNSBAQCBkZWZpbmUgRGV2aWNlL2ZyaWVuZGx5YXJtX25hbm9waS1u
ZW8yCiBlbmRlZgogVEFSR0VUX0RFVklDRVMgKz0gZnJpZW5kbHlhcm1fbmFub3BpLW5lbzIKIAor
ZGVmaW5lIERldmljZS9vbGltZXhfYTY0LW9saW51eGlubworICBERVZJQ0VfVkVORE9SIDo9IE9s
aW1leAorICBERVZJQ0VfTU9ERUwgOj0gQTY0LU9saW51eGlubworICBERVZJQ0VfUEFDS0FHRVMg
Oj0ga21vZC1ydGw4NzIzYnMgcnRsODcyM2JzLWZpcm13YXJlCisgICQoRGV2aWNlL3N1bjUwaS1h
NjQpCisgIFNVTlhJX0RUUyA6PSAkJChTVU5YSV9EVFNfRElSKSQkKFNPQyktb2xpbnV4aW5vCitl
bmRlZgorVEFSR0VUX0RFVklDRVMgKz0gb2xpbWV4X2E2NC1vbGludXhpbm8KKwogZGVmaW5lIERl
dmljZS9waW5lNjRfcGluZTY0LXBsdXMKICAgREVWSUNFX1ZFTkRPUiA6PSBQaW5lNjQKICAgREVW
SUNFX01PREVMIDo9IFBpbmU2NCsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
