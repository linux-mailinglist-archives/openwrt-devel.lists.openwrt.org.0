Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C601775A6
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 13:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8hyH1AW30J81+JBr2Rw2PB/3RGM2KlphK8C+8l7/DaA=; b=SORmedfvh4FQDp
	BjAqf6O9lu/m1Y0h1c2mQnji/LsCBvM9ht2zTV/9cbGqhTDzMvIWsOS5fgOp1bQJY2eoFVMzmQi6M
	hSIygTUPVIoCwfWg0GZ184UrxZS3x8pZYK97UgMPzjGWDaig7Lpq5+FOEMqsCyZo/AbofDF5dJs1R
	2RumVxU6XLwpzD2K1QqHOdCf7LLseqsB/ij5GnNjlRr/sbKPdziS78lDg4QSDMcJeRcl/K6wfZmqT
	RIaPhvrWWjQqDmdFGIYukZvk3kGRmcSClw6sgmjQtVzvy41hleeKy7h+DDmRYNzySVK7xy0ODDWol
	Ajqb+lLjVdOpaDYdUiog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96Lm-0008C9-UI; Tue, 03 Mar 2020 12:08:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96Lf-0008BO-JZ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 12:08:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B96E14089;
 Tue,  3 Mar 2020 13:08:29 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id fd3049e7;
 Tue, 3 Mar 2020 13:08:16 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 13:08:25 +0100
Message-Id: <20200303120826.10793-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040831_792212_7DBDBA30 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] imx6: 5.4: add missing kernel perf
 monitor symbol
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

QWRkIG1pc3Npbmcga2VybmVsIGNvbmZpZyBzeW1ib2wgcHJvYmFibHkgc29tZSBkZXBlbmRlbmN5
IHVuY292ZXJlZCBieQpteSBsb2NhbCBwZXJmIHJlbGF0ZWQgYW5kIGVuYWJsZWQga2VybmVsIGNv
bmZpZyBvcHRpb25zLgoKIEFSTSBQTVUgZnJhbWV3b3JrIChBUk1fUE1VKSBbWS9uLz9dIHkKIEZy
ZWVzY2FsZSBpLk1YOCBERFIgcGVyZiBtb25pdG9yIChGU0xfSU1YOF9ERFJfUE1VKSBbTi9tL3kv
P10gKE5FVykKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0t
LQogdGFyZ2V0L2xpbnV4L2lteDYvY29uZmlnLTUuNCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2lteDYvY29uZmlnLTUuNCBi
L3RhcmdldC9saW51eC9pbXg2L2NvbmZpZy01LjQKaW5kZXggYjhmNDJiMDA0NDY5Li42ZGNmZjI0
ODg3OGEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9pbXg2L2NvbmZpZy01LjQKKysrIGIvdGFy
Z2V0L2xpbnV4L2lteDYvY29uZmlnLTUuNApAQCAtMjQ5LDYgKzI0OSw3IEBAIENPTkZJR19GSVhf
RUFSTFlDT05fTUVNPXkKIENPTkZJR19GU0xfR1VUUz15CiAjIENPTkZJR19GU0xfUURNQSBpcyBu
b3Qgc2V0CiBDT05GSUdfRlNfRU5DUllQVElPTj15CisjIENPTkZJR19GU0xfSU1YOF9ERFJfUE1V
IGlzIG5vdCBzZXQKIENPTkZJR19GU19JT01BUD15CiBDT05GSUdfRlNfTUJDQUNIRT15CiBDT05G
SUdfRlNfUE9TSVhfQUNMPXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
