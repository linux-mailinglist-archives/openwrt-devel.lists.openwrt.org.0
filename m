Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97726EF226
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OPtnRGSDUoT3qru+z9xOGrcg4WzZcY7or1+v6DKbPA=; b=GfnJFTkyY5AHwd
	hHJAhepfH7ppgurdYXd3uiGRtbIyoN+4bpgACxOgcBGa8bB0NnZqmVv95hz3kSwedM/bOmGkgffxj
	QH13mkQPYDft1vaBv5YVpsaubEZXs7vUqakapUhbkDM7gkVqBVr6ItvjuvCLjaxfQdh5Z30T4xmgx
	uTOQSfWwCotqN7kdO4DJe9nOlN+R0sUOEUvEZvmWwHliY3NDVdH+VfAQ+CwPDm0UGgTxSODb/smlO
	8XCuUbwfu96y95eQEeYIIjaCc4ZijJdh/uG3RinGCiBmWSbwbPqSMdJeB00omoUik9hJWEWJ1ecYg
	iGOjF3nqf5CbOc68FTxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmu5-0005UI-1k; Tue, 05 Nov 2019 00:41:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqR-0008AC-JR
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D213D4D8C;
 Tue,  5 Nov 2019 01:37:13 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ffbe3675;
 Tue, 5 Nov 2019 01:37:04 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:55 +0100
Message-Id: <20191105003657.16540-17-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163715_814251_A75BDF76 
X-CRM114-Status: UNSURE (   8.81  )
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
Subject: [OpenWrt-Devel] [PATCH uci 16/18] delta: prevent possible null
 pointer use
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
c3VlOgoKIGRlbHRhLmM6Mzk6MTM6IHdhcm5pbmc6IE51bGwgcG9pbnRlciBwYXNzZWQgdG8gMXN0
IHBhcmFtZXRlciBleHBlY3RpbmcgJ25vbm51bGwnCiAgICAgICAgaW50IHNpemUgPSBzdHJsZW4o
c2VjdGlvbikgKyAxOwogICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CgpTaWduZWQt
b2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGRlbHRhLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kZWx0YS5jIGIvZGVsdGEuYwppbmRleCA5N2JkZDI5ZDMwMDUuLjIyOGEzMjhjMjFhMSAx
MDA2NDQKLS0tIGEvZGVsdGEuYworKysgYi9kZWx0YS5jCkBAIC0zOTIsNyArMzkyLDcgQEAgc3Rh
dGljIHZvaWQgdWNpX2ZpbHRlcl9kZWx0YShzdHJ1Y3QgdWNpX2NvbnRleHQgKmN0eCwgY29uc3Qg
Y2hhciAqbmFtZSwgY29uc3QgY2gKIAkJCQltYXRjaCA9IGZhbHNlOwogCQl9CiAKLQkJaWYgKCFt
YXRjaCkgeworCQlpZiAoIW1hdGNoICYmIHB0ci5zZWN0aW9uKSB7CiAJCQl1Y2lfYWRkX2RlbHRh
KGN0eCwgJmxpc3QsIGMsCiAJCQkJcHRyLnNlY3Rpb24sIHB0ci5vcHRpb24sIHB0ci52YWx1ZSk7
CiAJCX0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
