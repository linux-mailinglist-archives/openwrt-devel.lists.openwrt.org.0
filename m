Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1866BCE1
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 15:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VXjjMNX7us/cCPfjRjedwRhjsPTxJ79BSdAB4MzMT3I=; b=XkvaLW+OW1VjRM
	MI7xKgzlCWaPWR7xRAj9QGK2INcxSzE/ndLMtDNWGtHUNIEVPgwaGZLL+sKFRvibPshxjxnRhJfwx
	afOXF3/myKp4W0RFlpkyW4KNDrE8OSvjYPDZOqRJk82BFxg++oDR+QLHKUyoA0jBcIdnjP6aixE6c
	LVJQbbZaxnbHnocL9E7wkNbs2HoDJGu4AuGVgZ6t17biaV7qbPzz/z78GOLP0MDfVnkRZwNGiePk9
	/ocT7xz1SG4p9zUr1LSo2yGG+wzMMXl0VWn1sifGItQR9LrXxQCxqIfvWSEOrZTsWU0DcX9oJ5BCg
	qtF11nzhz6rvYQPOn2sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjqv-0004Md-5U; Wed, 17 Jul 2019 13:20:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjqi-000407-J6
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 13:20:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EDED136D7;
 Wed, 17 Jul 2019 15:19:57 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f90e9eec;
 Wed, 17 Jul 2019 15:19:50 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 15:19:54 +0200
Message-Id: <20190717131954.16865-1-ynezz@true.cz>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062000_781654_F5EEDB23 
X-CRM114-Status: UNSURE (   7.22  )
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
Subject: [OpenWrt-Devel] [PATCH] ath79: ar9330: add missing watchdog node
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

SXQgd2FzIHJlcG9ydGVkIGluIEZTIzIzODUsIHRoYXQgQ2FyYW1ib2xhMiBkb2Vzbid0IGN1cnJl
bnRseSBoYXZlCndvcmtpbmcgd2F0Y2hkb2cgc28gZml4IGl0IGJ5IGFkZGluZyB3YXRjaGRvZyBu
b2RlLgoKUmVmOiBGUyMyMzg1ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9hcjkzMzAuZHRzaSB8IDEwICsrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9hcjkzMzAuZHRzaSBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMv
YXI5MzMwLmR0c2kKaW5kZXggNjAzYjE2NTgxY2U4Li42NGMxMzU0MDViOTcgMTAwNjQ0Ci0tLSBh
L3RhcmdldC9saW51eC9hdGg3OS9kdHMvYXI5MzMwLmR0c2kKKysrIGIvdGFyZ2V0L2xpbnV4L2F0
aDc5L2R0cy9hcjkzMzAuZHRzaQpAQCAtODYsNiArODYsMTYgQEAKIAkJCQkjY2xvY2stY2VsbHMg
PSA8MT47CiAJCQl9OwogCisJCQl3ZHQ6IHdkdEAxODA2MDAwOCB7CisJCQkJY29tcGF0aWJsZSA9
ICJxY2EsYXI3MTMwLXdkdCI7CisJCQkJcmVnID0gPDB4MTgwNjAwMDggMHg4PjsKKworCQkJCWlu
dGVycnVwdHMgPSA8ND47CisKKwkJCQljbG9ja3MgPSA8JnBsbCBBVEg3OV9DTEtfQUhCPjsKKwkJ
CQljbG9jay1uYW1lcyA9ICJ3ZHQiOworCQkJfTsKKwogCQkJcnN0OiByZXNldC1jb250cm9sbGVy
QDE4MDYwMDFjIHsKIAkJCQljb21wYXRpYmxlID0gInFjYSxhcjcxMDAtcmVzZXQiOwogCQkJCXJl
ZyA9IDwweDE4MDYwMDFjIDB4ND47Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
