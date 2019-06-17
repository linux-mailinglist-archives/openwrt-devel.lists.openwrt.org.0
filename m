Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4CE47BC6
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 10:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+3qGt+PGQJDhQT3xGkgoP4bq9tBUimXSEwmN8sIs94=; b=PgxFklkkNk97rg
	acOb84m7QTiz2TkYTgp55DC0s7OtLXyH1oXqHWl9sYMmMx9MdU/P1zUH7k9XX6SmOLvXVSp/r72tA
	Fwli7yjZ9oroAFE0XzCdiQcQmbKDw+3ExFrmKb3GB0jOkb6pVMRwi1wpfmCZmRGTwPdJAkgU6MEbm
	YQqpoIGysQeHagvD+k2F90qIjHSFTy9XjHZpsIkEyJ7LND1qWD7zw6Tn7LjpbYde5yJgUtybqIxBv
	9MAVyh1uPZbLJ0orCVG8KtxzqMbMiuD/srGOad3LIFZPnbUiptzJ7l0CQzZu72DCxr6KQyEKH3rNJ
	UhlesnoU8eVdngiVjQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmZB-0002h4-PU; Mon, 17 Jun 2019 08:00:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmYZ-0002FP-47
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 08:00:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6D3943176;
 Mon, 17 Jun 2019 09:59:51 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 536c6514;
 Mon, 17 Jun 2019 09:59:49 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 09:59:43 +0200
Message-Id: <1560758385-2678-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_005959_555291_DD943B65 
X-CRM114-Status: UNSURE (   7.29  )
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
Subject: [OpenWrt-Devel] [PATCH 1/3] kernel: generic: add missing 4.19
 config symbol
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

Rml4ZXMgZm9sbG93aW5nIGtlcm5lbCBidWlsZCBpc3N1ZSBvbiBhdGg3OS9nZW5lcmljOgoKICBF
bmFibGUgc3VwcG9ydCBmb3IgbGF0ZW5jeSBiYXNlZCBjZ3JvdXAgSU8gcHJvdGVjdGlvbiAoQkxL
X0NHUk9VUF9JT0xBVEVOQ1kpIFtOL3kvP10gKE5FVykKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTQu
MTkgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3Rh
cmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5IGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29u
ZmlnLTQuMTkKaW5kZXggZTM5ODM3Yjk5NWI2Li45YTMxYTZmZjMwM2EgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51eC9nZW5lcmlj
L2NvbmZpZy00LjE5CkBAIC01MDgsNiArNTA4LDcgQEAgQ09ORklHX0JJVFJFVkVSU0U9eQogIyBD
T05GSUdfQkxLX0NNRExJTkVfUEFSU0VSIGlzIG5vdCBzZXQKICMgQ09ORklHX0JMS19DUFFfQ0lT
U19EQSBpcyBub3Qgc2V0CiAjIENPTkZJR19CTEtfQ1BRX0RBIGlzIG5vdCBzZXQKKyMgQ09ORklH
X0JMS19DR1JPVVBfSU9MQVRFTkNZIGlzIG5vdCBzZXQKICMgQ09ORklHX0JMS19ERUJVR19GUyBp
cyBub3Qgc2V0CiBDT05GSUdfQkxLX0RFVj15CiAjIENPTkZJR19CTEtfREVWXzNXX1hYWFhfUkFJ
RCBpcyBub3Qgc2V0Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
