Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA077115FCE
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kp+Pk7X65AxMrieakXqCPHxIGec+n7W3HsteZNWqObM=; b=IMSEBEJRERvb8z
	CO0InlSwYPz8oVse+wwr8+csdQmgHLo30yFEJpTAHOX7uwtm8JjSjblvrS9N2lxUFBvlG7cmOVaCC
	LnQsWVdfBH56shrWSxViFtORcHObZXTf7M1OtWJiL/ae+nZ3es49f39jcYrzMrKdMOrnt/2Hle1mB
	VCS+fNanQ90D/8EsY8bcSMWkWoyv9bNafHkLySkwQkx5YrdcCmhyto5YK+YhpV+r2/haamYhBWXs6
	sQbstMP6A2UWsL3Qje69Xw0SzJzJxTirmg+06XWJp8hrNVNZj2xAPvhX+gMDK+nHGSiLyEt5OdT02
	8cAVIXBLuozFz90g237w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idj6z-0003YX-Ve; Sat, 07 Dec 2019 23:03:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idj6Q-000379-Ag
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:03:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 11FFA419F;
 Sun,  8 Dec 2019 00:03:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b67f2a7e;
 Sun, 8 Dec 2019 00:02:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:52:53 +0100
Message-Id: <20191207225257.14135-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_150306_540364_5A07D261 
X-CRM114-Status: UNSURE (   5.32  )
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
Subject: [OpenWrt-Devel] [PATCH uci 1/5] cli: fix format string clang-10
 warning
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
 Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+CgpGaXhlczoKCiBjbGkuYzoxOTY6
MTk6IGVycm9yOiBmb3JtYXQgc3RyaW5nIGlzIG5vdCBhIHN0cmluZyBsaXRlcmFsIFstV2Vycm9y
PWZvcm1hdC1ub25saXRlcmFsXQoKU2lnbmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBn
bWFpbC5jb20+CltzcGxpdCBpbnRvIHNlcGFyYXRlIGNvbW1pdF0KU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBjbGkuYyB8IDEgKwogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvY2xpLmMgYi9jbGkuYwppbmRleCA4OTcw
ZjRmMGI4Y2UuLjZiYTk3ZWEwNzQyNCAxMDA2NDQKLS0tIGEvY2xpLmMKKysrIGIvY2xpLmMKQEAg
LTE4NSw2ICsxODUsNyBAQCBzdGF0aWMgdm9pZCBjbGlfcGVycm9yKHZvaWQpCiAJdWNpX3BlcnJv
cihjdHgsIGFwcG5hbWUpOwogfQogCitfX2F0dHJpYnV0ZV9fKChmb3JtYXQocHJpbnRmLCAxLCAy
KSkpCiBzdGF0aWMgdm9pZCBjbGlfZXJyb3IoY29uc3QgY2hhciAqZm10LCAuLi4pCiB7CiAJdmFf
bGlzdCBhcDsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
