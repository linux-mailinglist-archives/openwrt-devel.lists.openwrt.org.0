Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F031B85DC
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 12:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f5JDqAJRUEuoYK+NtGpg7/K2dUACVb0Wzk6j8RrpSh8=; b=aZlkIosHAULyoP
	uiiSJYhzDsA5ilAX/V64rgUh+sfZFTuOciUVgOg9DutRQdSdeFrxbcFUgHiPzOs+tBQYW+qhoBqgQ
	XxxPTgmUbU7VR2rG7cmw4QL478PJ49+1iJltBjvpFUpr9GeIP9+Q2vZVwNDfn4Wla13TGwuVa87wj
	hIDM4XqAmW6uUe/6kPyDYTkC4stnq5D4VyBVzi4RWIUxWvQ+QwYiyOoXTfjaGiHp++qd4HPUS9/08
	1sBppo/ub9GT1P522yRkY3jRV/Zh8hL5jiQLGsMXcpj/bgq/T8DIEwMYQPE/CMGup+dXkpw6tYSr+
	j5LxfbmOWLI+hypeIjMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIU4-0002Ty-8x; Sat, 25 Apr 2020 10:56:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSITx-0002Sl-CT
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 10:56:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 32F714457;
 Sat, 25 Apr 2020 12:56:21 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6b3656d9;
 Sat, 25 Apr 2020 12:56:06 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 Apr 2020 12:56:17 +0200
Message-Id: <20200425105617.26258-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035625_573615_F68CDD6A 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86: fix unusable squashfs images by adding
 missing padding
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SXQgd2FzIHJlcG9ydGVkLCB0aGF0IGFmdGVyIGltYWdlIGdlbmVyYXRpb24gcmV3b3JrCng4Ni02
NC1nZW5lcmljLXNxdWFzaGZzLXJvb3Rmcy5pbWcgaW1hZ2Ugd29uJ3QgYm9vdCBvbiBYZW5TZXJ2
ZXIgeDg2XzY0CmFueW1vcmU6CgogRjJGUy1mcyAoeHZkYSk6IE1hZ2ljIE1pc21hdGNoLCB2YWxp
ZCgweGYyZjUyMDEwKSAtIHJlYWQoMHg4NDI4OTk2MCkKIEYyRlMtZnMgKHh2ZGEpOiBDYW4ndCBm
aW5kIHZhbGlkIEYyRlMgZmlsZXN5c3RlbSBpbiAxdGggc3VwZXJibG9jawogRjJGUy1mcyAoeHZk
YSk6IE1hZ2ljIE1pc21hdGNoLCB2YWxpZCgweGYyZjUyMDEwKSAtIHJlYWQoMHg0ZThlZTIyMykK
IEYyRlMtZnMgKHh2ZGEpOiBDYW4ndCBmaW5kIHZhbGlkIEYyRlMgZmlsZXN5c3RlbSBpbiAydGgg
c3VwZXJibG9jawogTGlzdCBvZiBhbGwgcGFydGl0aW9uczoKIGNhMDAgICAgICAgICAgICA0MjA3
IHh2ZGEKICBkcml2ZXI6IHZiZAogTm8gZmlsZXN5c3RlbSBjb3VsZCBtb3VudCByb290LCB0cmll
ZDoKICBleHQzCiAgZXh0MgogIGV4dDQKICBzcXVhc2hmcwogIGlzbzk2NjAKICBmMmZzCgogS2Vy
bmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IFZGUzogVW5hYmxlIHRvIG1vdW50IHJvb3QgZnMgb24g
dW5rbm93bi1ibG9jaygyMDIsMCkKClNvIGxldHMgZml4IHRoaXMgYnkgYWRkaW5nIGJhY2sgcGFk
ZGluZyB3aGljaCB3YXMgaW50cm9kdWNlZCBpbiBjb21taXQKYTE3ZDk0ODJmNWUyICgieDg2OiBp
bWFnZTogZml4IHNtYWxsIGRpc2sgc3BhY2UgaW4gc3F1YXNoZnMgb3ZlcmxheSIpLgoKUmVmOiBG
UyMzMDM2CkNjOiBQYXVsIFNwb29yZW4gPG1haWxAYXBhcmNhci5vcmc+CkNjOiBUb21hc3ogTWFj
aWVqIE5vd2FrIDx0b21la19uQG8yLnBsPgpGaXhlczogMjU4ZjA3MGQxYTRmICgieDg2OiBmaXgg
bWlzc2luZyBzcXVhc2hmcyBhbmQgZXh0NCByb290ZnMgaW1hZ2VzIikKRml4ZXM6IGNiMDA3YTdi
ZjYxOSAoIng4Njogc3dpdGNoIGltYWdlIGdlbmVyYXRpb24gdG8gbmV3IGNvZGUiKQpTaWduZWQt
b2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC94
ODYvaW1hZ2UvTWFrZWZpbGUgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9N
YWtlZmlsZSBiL3RhcmdldC9saW51eC94ODYvaW1hZ2UvTWFrZWZpbGUKaW5kZXggNzJhNGQ2NmFk
NzMxLi4xNzRjMjcyYTUxNWUgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC94ODYvaW1hZ2UvTWFr
ZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9NYWtlZmlsZQpAQCAtMTExLDggKzEx
MSw4IEBAIGRlZmluZSBEZXZpY2UvRGVmYXVsdAogICBJTUFHRS9jb21iaW5lZC5pbWcuZ3ogOj0g
Z3J1Yi1jb25maWcgcGMgfCBjb21iaW5lZCB8IGdydWItaW5zdGFsbCB8IGd6aXAgfCBhcHBlbmQt
bWV0YWRhdGEKICAgSU1BR0UvY29tYmluZWQudmRpIDo9IGdydWItY29uZmlnIHBjIHwgY29tYmlu
ZWQgfCBncnViLWluc3RhbGwgfCBxZW11LWltYWdlIHZkaQogICBJTUFHRS9jb21iaW5lZC52bWRr
IDo9IGdydWItY29uZmlnIHBjIHwgY29tYmluZWQgfCBncnViLWluc3RhbGwgfCBxZW11LWltYWdl
IHZtZGsKLSAgSU1BR0Uvcm9vdGZzLmltZyA6PSBhcHBlbmQtcm9vdGZzCi0gIElNQUdFL3Jvb3Rm
cy5pbWcuZ3ogOj0gYXBwZW5kLXJvb3RmcyB8IGd6aXAKKyAgSU1BR0Uvcm9vdGZzLmltZyA6PSBh
cHBlbmQtcm9vdGZzIHwgcGFkLXRvICQoUk9PVEZTX1BBUlRTSVpFKQorICBJTUFHRS9yb290ZnMu
aW1nLmd6IDo9IGFwcGVuZC1yb290ZnMgfCBwYWQtdG8gJChST09URlNfUEFSVFNJWkUpIHwgZ3pp
cAogICBBUlRJRkFDVC9pbWFnZS1lZmkuaXNvIDo9IGdydWItY29uZmlnIGlzbyB8IGlzbyBlZmkK
ICAgSU1BR0UvY29tYmluZWQtZWZpLmltZyA6PSBncnViLWNvbmZpZyBlZmkgfCBjb21iaW5lZCBl
ZmkgfCBncnViLWluc3RhbGwgZWZpIHwgYXBwZW5kLW1ldGFkYXRhCiAgIElNQUdFL2NvbWJpbmVk
LWVmaS5pbWcuZ3ogOj0gZ3J1Yi1jb25maWcgZWZpIHwgY29tYmluZWQgZWZpIHwgZ3J1Yi1pbnN0
YWxsIGVmaSB8IGd6aXAgfCBhcHBlbmQtbWV0YWRhdGEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
