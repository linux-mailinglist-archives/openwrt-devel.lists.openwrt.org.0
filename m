Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3913E19DDDC
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMyHlsg5USLo2jbqZ5lJORfiUBvY91/GBen05a0whI0=; b=qBk61pLFRmACHH
	Wz0lTRLU1RSx3QM42FSV4s+HNID4i2iHMDL7cDWGXNxDPT0rpdXzL5SKcShq+ylE98eLNoJosUSpO
	I9TiFGkyf4SBMXt22eMk+H/p5HodQjSuCb5G/tPshTO/CHzund0Aw3md/qbl4T607KgBgeXmKLsox
	5gdxSKR1/nZzE9j5e1g/rLU5LOt90ki3Qu/5JJRuRMi4o2nqV+uyNytTL8mHpVz077Ey3tt2mDlJS
	bAXAmnKPx4Fvh7tNGAcCUH35fRsccUHSlixuPBquMIbtCzOHmKK/6zqmX8BVEvOeGHpJYQlTOOxh7
	HCehulEm2cnTcRdlH75g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQy9-0002tN-EP; Fri, 03 Apr 2020 18:23:05 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQx4-0001iw-My
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:22:00 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 387AB600FF;
 Fri,  3 Apr 2020 20:21:46 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 387AB600FF
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 387AB600FF
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:45 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:54 +0200
Message-Id: <20200403182056.43730-7-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112158_938312_BFC25FBA 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/8] ar71xx: enable mikrotik platform driver
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9hcjcxeHgvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQgfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2Fy
NzF4eC9taWtyb3Rpay9jb25maWctZGVmYXVsdCBiL3RhcmdldC9saW51eC9hcjcxeHgvbWlrcm90
aWsvY29uZmlnLWRlZmF1bHQKaW5kZXggZTMyNGU0YzI1Mi4uOTg0ZTVhYTkwOCAxMDA2NDQKLS0t
IGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9taWtyb3Rpay9jb25maWctZGVmYXVsdAorKysgYi90YXJn
ZXQvbGludXgvYXI3MXh4L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0CkBAIC0yNiw2ICsyNiw4IEBA
IENPTkZJR19IV19IQVNfUENJPXkKIENPTkZJR19MRURTX1JCNzUwPXkKIENPTkZJR19MWk9fREVD
T01QUkVTUz15CiAjIENPTkZJR19NQVJWRUxMX1BIWSBpcyBub3Qgc2V0CitDT05GSUdfTUlLUk9U
SUs9eQorQ09ORklHX1JPVVRFUkJPT1RfU1lTRlNfQ0ZHPXkKICMgQ09ORklHX01URF9DRkkgaXMg
bm90IHNldAogQ09ORklHX01URF9DRklfSTI9eQogIyBDT05GSUdfTVREX0NNRExJTkVfUEFSVFMg
aXMgbm90IHNldAotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
