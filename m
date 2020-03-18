Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817DE18A81D
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlNgRM34MNmY6tQLSXebY2VrNMfTRZlzG9MnjwrZZm4=; b=hbu99Cfvnd3y3f
	9Xo6NHlGiBrYlvlNzSdbgcKx+ZgxTZsMktGn161WRPqOVTMhC5AH5Rfw4qAA58Ot7BQ1YCKQ3ucN5
	vI0ByddIs8nhGA/qcJNrmhZPSxcxic2lfnSmDAokJoZdR1blQUq54oaJmmCvsE7PUV5uZV5U4QIeF
	17qcTYAlccHVFXjt1N4uYAkBqkWzEbc9yYScCk5m0MXK+Y6waGWxrJwmmofXrfy111xhx2xCZUVy8
	kweudmiIPK5XPk1k59QzL6eW9InrUmdy0EKhOsPE3HD3oDwW03Xls0VXzxhp/+qXDgK9fBFEOphdC
	qbmRUAAeXk6T58ge2aMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhAs-0007ob-Sd; Wed, 18 Mar 2020 22:28:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA4-0006ub-Nd
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A60C14C1C;
 Wed, 18 Mar 2020 23:27:37 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ef71abbe;
 Wed, 18 Mar 2020 23:27:25 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:08 +0100
Message-Id: <20200318222713.1495-5-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152740_921299_7C64B76B 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: [OpenWrt-Devel] [PATCH 4/9] uboot-sunxi: a64: allow booting
 directly from eMMC
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

Q3VycmVudCBib290IHNjcmlwdCB1c2VzIGhhcmRjb2RlZCBib290ZGV2aWNlLCB3aGljaCBhbGxv
d3MgYm9vdGluZyBmcm9tClNEIGNhcmQgb25seSwgc28gdGhpcyBwYXRjaCBhbGxvd3MgYm9vdGlu
ZyBkaXJlY3RseSBmcm9tIGVNTUMgYXMgd2VsbC4KV2hpbGUgYXQgaXQsIHJlcGxhY2UgZml4ZWQg
cm9vdCBkZXZpY2Ugd2l0aCBtb3JlIGZsZXhpYmxlIFVVSUQgYmFzZWQKcHJvYmluZywgc28gZnJv
bSBub3cgb24gcHJvYmluZyBvcmRlciBvZiBNTUMgZGV2aWNlIGRvZXNuJ3QgbWF0dGVyLgoKU2ln
bmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBwYWNrYWdlL2Jv
b3QvdWJvb3Qtc3VueGkvdUVudi1hNjQudHh0IHwgOCArKysrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jv
b3QvdWJvb3Qtc3VueGkvdUVudi1hNjQudHh0IGIvcGFja2FnZS9ib290L3Vib290LXN1bnhpL3VF
bnYtYTY0LnR4dAppbmRleCA3YTcxN2ZkYzBmYzcuLmE0N2ViZGE2MTNmNCAxMDA2NDQKLS0tIGEv
cGFja2FnZS9ib290L3Vib290LXN1bnhpL3VFbnYtYTY0LnR4dAorKysgYi9wYWNrYWdlL2Jvb3Qv
dWJvb3Qtc3VueGkvdUVudi1hNjQudHh0CkBAIC0xLDUgKzEsNyBAQAotc2V0ZW52IGxvYWRrZXJu
ZWwgZmF0bG9hZCBtbWMgMCBcJGtlcm5lbF9hZGRyX3IgdUltYWdlCi1zZXRlbnYgbG9hZGR0YiBm
YXRsb2FkIG1tYyAwIFwkZmR0X2FkZHJfciBkdGIKLXNldGVudiBib290YXJncyBjb25zb2xlPXR0
eVMwLDExNTIwMCBlYXJseXByaW50ayByb290PS9kZXYvbW1jYmxrMHAyIHJvb3R3YWl0IGVhcmx5
Y29uPXVhcnQsbW1pbzMyLDB4MDFjMjgwMDAKK3NldGVudiBtbWNfcm9vdHBhcnQgMgorcGFydCB1
dWlkIG1tYyAke21tY19ib290ZGV2fToke21tY19yb290cGFydH0gdXVpZAorc2V0ZW52IGxvYWRr
ZXJuZWwgZmF0bG9hZCBtbWMgXCRtbWNfYm9vdGRldiBcJGtlcm5lbF9hZGRyX3IgdUltYWdlCitz
ZXRlbnYgbG9hZGR0YiBmYXRsb2FkIG1tYyBcJG1tY19ib290ZGV2IFwkZmR0X2FkZHJfciBkdGIK
K3NldGVudiBib290YXJncyBjb25zb2xlPXR0eVMwLDExNTIwMCBlYXJseXByaW50ayByb290PVBB
UlRVVUlEPSR7dXVpZH0gcm9vdHdhaXQgZWFybHljb249dWFydCxtbWlvMzIsMHgwMWMyODAwMAog
c2V0ZW52IHVlbnZjbWQgcnVuIGxvYWRrZXJuZWwgXCZcJiBydW4gbG9hZGR0YiBcJlwmIGJvb3Rp
IFwka2VybmVsX2FkZHJfciAtIFwkZmR0X2FkZHJfcgogcnVuIHVlbnZjbWQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
