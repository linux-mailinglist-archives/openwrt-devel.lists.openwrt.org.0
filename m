Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9F5DE839
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 11:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIttGEraTGqJiCUkljgsnS/G4uzhQs7xGu8wS4Db4X0=; b=Gzfo8lubwq6ZEQ
	w7T6RReyV2pITtpEYVEnVAtk5ELVIdGf0/KMI4XzdsU7nxof8Qcm2Ot6a2a1HIq6MJLkvEJxmK1Q7
	YUNFx4Am3u+a1ibjhMWGCKhnYzrAXf/X9NbOqpXPFFXwmw076vEyd8D7xLDlvb+yS5nJL6aBJvoF2
	6BbfNkeyVXecv3YADL1d8Nt24rZVV7GzLJBet7VuYMZrf1IqehJMX2FadDzlbqj5S8QC1emuwZqhE
	oaDclDArxr0vWYgCQy2nZzhuFv/Azrs9GZELXeN4A0ByCgvwcatc3MSm9QTIL7RUL9jM0MI0+CTn5
	u7fQpudXLIiZ2njAzk6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMU7Y-0005vG-Re; Mon, 21 Oct 2019 09:37:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMU7O-0005tN-OT
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 09:36:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0F30735DC;
 Mon, 21 Oct 2019 11:36:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ea5d50e8;
 Mon, 21 Oct 2019 11:36:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 11:36:40 +0200
Message-Id: <20191021093642.3118-3-ynezz@true.cz>
In-Reply-To: <20191021093642.3118-1-ynezz@true.cz>
References: <20191021093642.3118-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_023650_952461_DF3316F6 
X-CRM114-Status: UNSURE (   7.67  )
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
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 3/5] cmake: enable extra compiler
 checks
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

TGV0J3MgZW5mb3JjZSBhZGRpdGlvbmFsIGF1dG9tYXRpYyBjaGVja3MgZW5mb3JjZWQgYnkgdGhl
IGNvbXBpbGVyIGluCm9yZGVyIHRvIGNhdGNoIHBvc3NpYmxlIGVycm9ycyBkdXJpbmcgY29tcGls
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IENNYWtlTGlzdHMudHh0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4
dAppbmRleCA0OTI0NTg2ZTg5M2MuLmU3ZDdmODYxOTljZiAxMDA2NDQKLS0tIGEvQ01ha2VMaXN0
cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTUsNyArNSw3IEBAIElOQ0xVREUoR05VSW5z
dGFsbERpcnMpCiAKIElOQ0xVREVfRElSRUNUT1JJRVMoaW5jbHVkZSkKIAotQUREX0RFRklOSVRJ
T05TKC1XYWxsIC1XZXJyb3IpCitBRERfREVGSU5JVElPTlMoLVdhbGwgLVdlcnJvciAtV2V4dHJh
IC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKIAogQUREX0xJQlJBUlkobmwtdGlueSBTSEFSRUQKIAlh
dHRyLmMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
