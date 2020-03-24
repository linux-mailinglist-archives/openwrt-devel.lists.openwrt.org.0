Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74906190A56
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 11:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CYN9DgkMER3YHSFHjxsj/Jdwukch9FclMI0lHT/Zoqc=; b=qFOGFkUtU5j0Ap
	NHBVK8WZeZTIFYeUlSYh6LSJbc5P3APYmbwMfvFZY21OYgaOIzmV8rWCRMyj7VnQ/ckdGE3e84sa3
	RkLY2GC5rM49aSsMcykfICx22V8vqak/nV3euPI1r84WLLN0DB2veJmpt7W4NjeYQrOG+Ryvq5cLY
	GrmLRr8FYoHI44mWmuT7d12KVClop5EsZRmLtA+kYmzcpN6Qbd36Q0dYPPuXzp4ahP2xWbAxnmF/t
	suomSHsCLuQUETv4Uh18XBoUzrff28vQ1wl9iTGymI6rTbe6gjlr25zUQ+cxgGLVpzsYhyl7Mwihi
	eV5/KNPcuAKr6cByry1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgXq-0006gN-8U; Tue, 24 Mar 2020 10:12:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgXk-0006fo-D5
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 10:12:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 06F75448E;
 Tue, 24 Mar 2020 11:12:08 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3bfdb066;
 Tue, 24 Mar 2020 11:11:54 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 11:12:03 +0100
Message-Id: <20200324101203.21770-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_031220_586662_B46B3F3C 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: switch to 5.4 kernel
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

NS40LjI0IHNlZW1zIHRvIGJlIHdvcmtpbmcgZmluZSBvbiBteSB6eXhlbCxuYmc2NjE3LCBzbyBs
ZXQncyBzdGFydAp3aWRlciB1c2VyYmFzZSB0ZXN0aW5nLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvaXBxNDB4eC9NYWtlZmls
ZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pcHE0MHh4L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4
L2lwcTQweHgvTWFrZWZpbGUKaW5kZXggZjM5NzM2MTM0MDMwLi45NGI0N2M0Yzk2ZGUgMTAwNjQ0
Ci0tLSBhL3RhcmdldC9saW51eC9pcHE0MHh4L01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9p
cHE0MHh4L01ha2VmaWxlCkBAIC04LDcgKzgsNyBAQCBDUFVfVFlQRTo9Y29ydGV4LWE3CiBDUFVf
U1VCVFlQRTo9bmVvbi12ZnB2NAogU1VCVEFSR0VUUzo9Z2VuZXJpYwogCi1LRVJORUxfUEFUQ0hW
RVI6PTQuMTkKK0tFUk5FTF9QQVRDSFZFUjo9NS40CiBLRVJORUxfVEVTVElOR19QQVRDSFZFUjo9
NS40CiAKIEtFUk5FTE5BTUU6PXpJbWFnZSBJbWFnZSBkdGJzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
