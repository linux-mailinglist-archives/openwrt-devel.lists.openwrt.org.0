Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4859A14227
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 21:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSAj44Q5GrVjLacvnR2kBxstnvq7RlNgxtxqe0bSobU=; b=BR8/KdkZdstzO+
	/4MrzRxXHZRMkyx9HHQbkxj7YFsMTSOdK5eyWfx/Wic77zSco6M4eb1dZo+PH48ZZQK4aqGxBNY1m
	z20Hj24RmLD/Py6Fc9Axa8zT0reYCr19CD5Fg4nIjplRYox5RwTtqOODE7WQGU/wEMcV35b6mZ9hs
	zTD/0O38JrUQp53SGsOj+rPrUWrNVY+s9jkPWYd/msZIeePlD22rK9J8BFGzQ7fejCViucd8xrs9l
	yp3i150lT94HydicGZd46drpo4KLzFRIcs3FmnOLWecf9Cj/7bH7mSpZQKDFxohXAhcOYj79u0K8+
	NYYz2worFs6u3uH43Bhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNN9z-0005KB-FU; Sun, 05 May 2019 19:50:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNN9i-0005CQ-AT
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 19:50:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 183B63EA1;
 Sun,  5 May 2019 21:50:36 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0183d808;
 Sun, 5 May 2019 21:50:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 21:50:28 +0200
Message-Id: <1557085828-32209-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557085828-32209-1-git-send-email-ynezz@true.cz>
References: <1557085828-32209-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_125038_523749_8CC19C22 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: archer-x7-v5: sync ar8327
 initial reg values with ar71xx
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSd2ZSBzaW1wbHkgZHVtcGVkIGNvbnRlbnQgb2YgdGhpcyByZWdzIGluIGFyNzF4eCBhbmQgd3Jv
dGUgdGhlbSB0byBEVFMuCgpUZXN0ZWQtYnk6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0Bh
ZHJpYW5zY2htdXR6bGVyLmRlPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU2M190cGxpbmtfYXJjaGVy
LXg3LXY1LmR0c2kgfCA3ICsrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5
NTYzX3RwbGlua19hcmNoZXIteDctdjUuZHRzaSBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNh
OTU2M190cGxpbmtfYXJjaGVyLXg3LXY1LmR0c2kKaW5kZXggZTU3ZDFmZC4uYTY3OTRjYSAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYzX3RwbGlua19hcmNoZXIteDct
djUuZHRzaQorKysgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NjNfdHBsaW5rX2FyY2hl
ci14Ny12NS5kdHNpCkBAIC0xNTksOSArMTU5LDEyIEBACiAJCXFjYSxtaWItcG9sbC1pbnRlcnZh
bCA9IDw1MDA+OwogCiAJCXFjYSxhcjgzMjctaW5pdHZhbHMgPSA8Ci0JCQkweDA0IDB4MDAwODAw
ODAgLyogUE9SVDAgUEFEIE1PREUgQ1RSTCAqLwotCQkJMHgxMCAweDgxMDAwMDgwIC8qIFBPV0VS
X09OX1NUUklQICovCisJCQkweDA0IDB4ODAwODAwODAgLyogUE9SVDAgUEFEIE1PREUgQ1RSTCAq
LworCQkJMHgwOCAweDAwMDAwMDAwIC8qIFBPUlQ1IFBBRCBNT0RFIENUUkwgKi8KKwkJCTB4MGMg
MHgwMDAwMDAwMCAvKiBQT1JUNiBQQUQgTU9ERSBDVFJMICovCisJCQkweDEwIDB4MDAwMDAwODAg
LyogUE9XRVJfT05fU1RSSVAgKi8KIAkJCTB4N2MgMHgwMDAwMDA3ZSAvKiBQT1JUMF9TVEFUVVMg
Ki8KKwkJCTB4OTQgMHgwMDAwMTA4MCAvKiBQT1JUNl9TVEFUVVMgKi8KIAkJCT47CiAJfTsKIH07
Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
