Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42349127034
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:02:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzl5WYVSyfUlLjZQCQzpAOmYWLGdsE9qAxqTo1CLGqA=; b=s+7tCinVkePkYs
	Nmld4BhK3xbQLbgXFX7nVXd92MRLT/HV45oCSobLsSG63SFNiPIkinCX1xljccbgXbN6IrgBVvRmL
	dIugoXr2bwfRKsoVo9VzRh3pdjQHbRikuLOqjWjrrpjphS+u2woE5cEABle1KCoav1E32utqbcsSW
	/iYDxoK4w8MFI68xx6QW9RRxHSzIavFojfeMoZNZ/AyI6GQqHjsmX4yV/b27jo6SkQ8DjTeA+JxF9
	ewyDZOm4TZ0MmFgj4ZQvZEJiy72EJyDJUurFmzANWUfCGEIDhbXCC3qksPVhZlGyGLHOIXxhbJTSU
	07I5oBm/lu6/rKOLGhJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3sX-0008RZ-T7; Thu, 19 Dec 2019 22:02:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3ou-0000xo-Dt
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:59:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 65DD04B5A;
 Thu, 19 Dec 2019 22:58:53 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c825c6e7;
 Thu, 19 Dec 2019 22:58:40 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:36 +0100
Message-Id: <20191219215836.21773-21-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135856_646058_EE6B7FC0 
X-CRM114-Status: UNSURE (   8.03  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 20/20] blobmsg: reuse
 blobmsg_namelen in blobmsg_data
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

TW92ZSBibG9ibXNnX25hbWVsZW4gaW50byBoZWFkZXIgZmlsZSBzbyBpdCdzIHBvc3NpYmxlIHRv
IHJldXNlIGl0IGluCmJsb2Jtc2dfZGF0YS4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIg
PHluZXp6QHRydWUuY3o+Ci0tLQogYmxvYm1zZy5jIHwgNiAtLS0tLS0KIGJsb2Jtc2cuaCB8IDcg
KysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvYmxvYm1zZy5jIGIvYmxvYm1zZy5jCmluZGV4IDdjZDA5MzQ2MDBkZS4u
NDhkYmE4MTU2ZDU4IDEwMDY0NAotLS0gYS9ibG9ibXNnLmMKKysrIGIvYmxvYm1zZy5jCkBAIC0y
NSwxMiArMjUsNiBAQCBzdGF0aWMgY29uc3QgaW50IGJsb2JfdHlwZVtfX0JMT0JNU0dfVFlQRV9M
QVNUXSA9IHsKIAlbQkxPQk1TR19UWVBFX1VOU1BFQ10gPSBCTE9CX0FUVFJfQklOQVJZLAogfTsK
IAotc3RhdGljIHVpbnQxNl90Ci1ibG9ibXNnX25hbWVsZW4oY29uc3Qgc3RydWN0IGJsb2Jtc2df
aGRyICpoZHIpCi17Ci0JcmV0dXJuIGJlMTZfdG9fY3B1KGhkci0+bmFtZWxlbik7Ci19Ci0KIGJv
b2wgYmxvYm1zZ19jaGVja19hdHRyKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGJvb2wg
bmFtZSkKIHsKIAlyZXR1cm4gYmxvYm1zZ19jaGVja19hdHRyX2xlbihhdHRyLCBuYW1lLCBibG9i
X3Jhd19sZW4oYXR0cikpOwpkaWZmIC0tZ2l0IGEvYmxvYm1zZy5oIGIvYmxvYm1zZy5oCmluZGV4
IGFmODhjMWZlYjg2Zi4uYmUzYzdlZTJjYmZkIDEwMDY0NAotLS0gYS9ibG9ibXNnLmgKKysrIGIv
YmxvYm1zZy5oCkBAIC02OSw2ICs2OSwxMSBAQCBzdGF0aWMgaW5saW5lIGludCBibG9ibXNnX3R5
cGUoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0cikKIAlyZXR1cm4gYmxvYl9pZChhdHRyKTsK
IH0KIAorc3RhdGljIHVpbnQxNl90IGJsb2Jtc2dfbmFtZWxlbihjb25zdCBzdHJ1Y3QgYmxvYm1z
Z19oZHIgKmhkcikKK3sKKwlyZXR1cm4gYmUxNl90b19jcHUoaGRyLT5uYW1lbGVuKTsKK30KKwog
c3RhdGljIGlubGluZSB2b2lkICpibG9ibXNnX2RhdGEoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAq
YXR0cikKIHsKIAlzdHJ1Y3QgYmxvYm1zZ19oZHIgKmhkcjsKQEAgLTgxLDcgKzg2LDcgQEAgc3Rh
dGljIGlubGluZSB2b2lkICpibG9ibXNnX2RhdGEoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0
cikKIAlkYXRhID0gKGNoYXIgKikgYmxvYl9kYXRhKGF0dHIpOwogCiAJaWYgKGJsb2JfaXNfZXh0
ZW5kZWQoYXR0cikpCi0JCWRhdGEgKz0gYmxvYm1zZ19oZHJsZW4oYmUxNl90b19jcHUoaGRyLT5u
YW1lbGVuKSk7CisJCWRhdGEgKz0gYmxvYm1zZ19oZHJsZW4oYmxvYm1zZ19uYW1lbGVuKGhkcikp
OwogCiAJcmV0dXJuIGRhdGE7CiB9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
