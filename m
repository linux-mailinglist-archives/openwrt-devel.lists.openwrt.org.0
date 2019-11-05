Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B9EF224
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=We/9uZPlQBveZY3J/31yaPlCW5PFr6Zv3atvkcC6EHo=; b=Fn9/j2tICb0RMn
	zpKS6w5wu0+UWGoauA9V5UqRkpIalB6g5kd/r8UoX3Tud7AIi6EmmHwllwHZ3SDHOHdSeO1uepbFu
	CDVAdjHvPrJDZ7UJsxpE1k59wi27NF9FT0cM88BWynVzJsmjqdhrHy4KlzxRLy5bNMHIgLdeJHXCy
	3lgwpC3VJ3RasM+ARw2vuaowURQjd/Qil5XT4EbdU4Q6LNmJNNtjg4y3pR9P1Sku45smikVPRQ7er
	NMO4l3jI5Ayx33h+TfIs+FuXLnCNsb9CyGKukusDq/4rDmIiHLsDrjg8bjvXT3qpJMKUsJyQeihfu
	3QCG/oc5WGsyK7jKKQ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmtq-0005EX-SQ; Tue, 05 Nov 2019 00:40:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqR-0008AD-IC
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A10134D8B;
 Tue,  5 Nov 2019 01:37:13 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 98986b16;
 Tue, 5 Nov 2019 01:37:03 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:54 +0100
Message-Id: <20191105003657.16540-16-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163715_761346_7DC48835 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 15/18] cli: remove unused variable
 assigment
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlOgoKIGNsaS5jOjU3NDo4OiB3YXJuaW5nOiBBbHRob3VnaCB0aGUgdmFsdWUgc3RvcmVkIHRv
ICdyZXQnIGlzIHVzZWQgaW4gdGhlIGVuY2xvc2luZyBleHByZXNzaW9uLCB0aGUgdmFsdWUgaXMg
bmV2ZXIgYWN0dWFsbHkgcmVhZCBmcm9tICdyZXQnCiAgICAgICAgICAgICAgICBpZiAoKHJldCA9
IHVjaV9wYXJzZV9hcmd1bWVudChjdHgsIGlucHV0LCAmc3RyLCAmYXJndltpXSkpICE9IFVDSV9P
SykgewogICAgICAgICAgICAgICAgICAgICBeICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6PgotLS0KIGNsaS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY2xpLmMgYi9jbGkuYwppbmRleCAxY2U0
ZDVlZDFkMzMuLjg5NzBmNGYwYjhjZSAxMDA2NDQKLS0tIGEvY2xpLmMKKysrIGIvY2xpLmMKQEAg
LTU3MSw3ICs1NzEsNyBAQCBzdGF0aWMgaW50IHVjaV9iYXRjaF9jbWQodm9pZCkKIAkJCXJldHVy
biAxOwogCQl9CiAJCWFyZ3ZbaV0gPSBOVUxMOwotCQlpZiAoKHJldCA9IHVjaV9wYXJzZV9hcmd1
bWVudChjdHgsIGlucHV0LCAmc3RyLCAmYXJndltpXSkpICE9IFVDSV9PSykgeworCQlpZiAodWNp
X3BhcnNlX2FyZ3VtZW50KGN0eCwgaW5wdXQsICZzdHIsICZhcmd2W2ldKSAhPSBVQ0lfT0spIHsK
IAkJCWNsaV9wZXJyb3IoKTsKIAkJCWkgPSAwOwogCQkJYnJlYWs7CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
