Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5576D47BC7
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 10:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYImJEfaAEIy8JOcLrLq+JIRPHE8IFytjxrcIY4Wucc=; b=gHSZys5WhvcLQl
	fCWnaEHiYbkgjGNfOvpGPG7/jGiLg+1oqoRWXFf6EZxf2A4KpAI1F4wsSNfxd0oPjPcXhVA5LrS/Z
	wK6DpO9qS5G2AdKy7dBQZq8k/vtAejt7JE3+0R2lBxMe8VTCHBh+W0dBJ7FlXyRbf3B2RYAMtx3t5
	hpIMW0SxhnVvNd7rvs51R24C2zI2bfbP8qw46Ct1SI0sjvhCsozquxKOxsDJuAxueYwhW9WI5b07E
	HW3W5o+IJy4qu+68mOSUIMNnN/+SxSrmFDld/tgZFE0tXZ0vWGTsM0klEHZRINu9uZuvTYOp4TI5s
	f4TWh3IkohpdSk+IhJiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmZw-0003mR-02; Mon, 17 Jun 2019 08:01:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmYZ-0002FO-48
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 08:00:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AF80031C8;
 Mon, 17 Jun 2019 09:59:51 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id bbda302b;
 Mon, 17 Jun 2019 09:59:49 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 09:59:44 +0200
Message-Id: <1560758385-2678-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560758385-2678-1-git-send-email-ynezz@true.cz>
References: <1560758385-2678-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_005959_556141_FF597381 
X-CRM114-Status: UNSURE (   6.78  )
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
Subject: [OpenWrt-Devel] [PATCH 2/3] kernel: generic: add missing DRM panel
 4.19 config symbols
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

V2hpbGUgYnVpbGRpbmcgdGVncmEvZ2VuZXJpYyBvbiA0LjE5LCBJJ3ZlIGRpc2NvdmVyZWQgZmV3
IG1pc3NpbmcKc3ltYm9scyByZWxhdGVkIHRvIERSTSBwYW5lbCBzeW1ib2xzLgoKU2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvZ2Vu
ZXJpYy9jb25maWctNC4xOSB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTQuMTkgYi90YXJn
ZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOQppbmRleCA5YTMxYTZmZjMwM2EuLjFiMmY1Yzhk
MDczNCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTQuMTkKKysrIGIv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTQuMTkKQEAgLTEyNjUsMTIgKzEyNjUsMTggQEAg
Q09ORklHX0RRTD15CiAjIENPTkZJR19EUk1fT01BUCBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1f
UEFORUxfQVJNX1ZFUlNBVElMRSBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fUEFORUxfSUxJVEVL
X0lMOTMyMiBpcyBub3Qgc2V0CisjIENPTkZJR19EUk1fUEFORUxfSUxJVEVLX0lMSTk4ODFDIGlz
IG5vdCBzZXQKKyMgQ09ORklHX0RSTV9QQU5FTF9JTk5PTFVYX1AwNzlaQ0EgaXMgbm90IHNldAog
IyBDT05GSUdfRFJNX1BBTkVMX0pESV9MVDA3ME1FMDUwMDAgaXMgbm90IHNldAogIyBDT05GSUdf
RFJNX1BBTkVMX0xHX0xHNDU3MyBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fUEFORUxfTFZEUyBp
cyBub3Qgc2V0CisjIENPTkZJR19EUk1fUEFORUxfT1JJU0VURUNIX09UTTgwMDlBIGlzIG5vdCBz
ZXQKICMgQ09ORklHX0RSTV9QQU5FTF9QQU5BU09OSUNfVlZYMTBGMDM0TjAwIGlzIG5vdCBzZXQK
ICMgQ09ORklHX0RSTV9QQU5FTF9SQVNQQkVSUllQSV9UT1VDSFNDUkVFTiBpcyBub3Qgc2V0Cisj
IENPTkZJR19EUk1fUEFORUxfUkFZRElVTV9STTY4MjAwIGlzIG5vdCBzZXQKICMgQ09ORklHX0RS
TV9QQU5FTF9TQU1TVU5HX0xEOTA0MCBpcyBub3Qgc2V0CisjIENPTkZJR19EUk1fUEFORUxfU0FN
U1VOR19TNkUzSEEyIGlzIG5vdCBzZXQKKyMgQ09ORklHX0RSTV9QQU5FTF9TQU1TVU5HX1M2RTYz
SjBYMDMgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX1BBTkVMX1NBTVNVTkdfUzZFOEFBMCBpcyBu
b3Qgc2V0CiAjIENPTkZJR19EUk1fUEFORUxfU0VJS09fNDNXVkYxRyBpcyBub3Qgc2V0CiAjIENP
TkZJR19EUk1fUEFORUxfU0hBUlBfTFExMDFSMVNYMDEgaXMgbm90IHNldAotLSAKMS45LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
