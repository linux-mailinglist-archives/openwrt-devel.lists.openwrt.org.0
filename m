Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98411F38F
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rmQCz6B39o4BoUTvEpzS6S+u33T/iSehzrsR9y0lOYg=; b=Zigolo3SnxmvIN
	i6FTZWT363/qf9HolNfqPci/I9C/7Wa/vxJDOBMuik7Wpea8gT+Ur5VJbOY5GBDDyVapqsaw2Ji6D
	L8HffD9feKXRTmbcoEnNWt9IqORvxmcm8juzSPHv9m76dD91Gvnxr0LjvzQFMadOvQ65LqQKF3B8G
	fEQ8SQMcbJqKHKHgPg9/d/qRhtwjSCg8VTm2OxtnDFbSwFQtquOR3YlZnztH4kKoCXMawEeNOpEzM
	rlvvQceUi2iMS1Xu0bwImvbHgpiwVC0d29GViIdJHgfYNq7LE3a8IRocXBPDpwCMvRv8WRDSQLJ++
	+quTt5ft0ERazuDhQC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQspm-0002mc-A3; Wed, 15 May 2019 12:16:34 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQspf-0002lf-Hk
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 12:16:29 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FCGK9H028971
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 14:16:21 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 193854C42;
 Wed, 15 May 2019 14:16:18 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5ed8657e;
 Wed, 15 May 2019 14:16:16 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 14:16:02 +0200
Message-Id: <1557922563-11442-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_051627_904716_F0493A42 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [OpenWrt-Devel] [PATCH iwinfo 1/2] Enable extra compiler checks
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

TGV0J3MgZW5mb3JjZSBhZGRpdGlvbmFsIGF1dG9tYXRpYyBjaGVja3MgZW5mb3JjZWQgYnkgdGhl
IGNvbXBpbGVyIGluCm9yZGVyIHRvIGNhdGNoIHBvc3NpYmxlIGVycm9ycyBkdXJpbmcgY29tcGls
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IE1ha2VmaWxlIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQppbmRleCA3MTVjMDNlMzQ2
NzEuLjdmOWM3NTVkNTNiYSAxMDA2NDQKLS0tIGEvTWFrZWZpbGUKKysrIGIvTWFrZWZpbGUKQEAg
LTEsNSArMSw1IEBACiBJV0lORk9fQkFDS0VORFMgICAgPSAkKEJBQ0tFTkRTKQotSVdJTkZPX0NG
TEFHUyAgICAgID0gJChDRkxBR1MpIC1zdGQ9Z251OTkgLWZzdHJpY3QtYWxpYXNpbmcgLUlpbmNs
dWRlCitJV0lORk9fQ0ZMQUdTICAgICAgPSAkKENGTEFHUykgLXN0ZD1nbnU5OSAtZnN0cmljdC1h
bGlhc2luZyAtSWluY2x1ZGUgLVdhbGwgLVdleHRyYSAtV2Vycm9yIC1Xbm8tdW51c2VkCiBJV0lO
Rk9fTERGTEFHUyAgICAgPSAtbHVjaSAtbHVib3ggLWx1YnVzCiAKIElXSU5GT19MSUIgICAgICAg
ICA9IGxpYml3aW5mby5zbwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
