Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957FF19DDDE
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HszH2LGC6lQdmx6V/BKasbavtZiFQMc3MdIT+vSeDO0=; b=aInJwXv5CbMk1X
	KOSzCPMhZdtrdXC99E1MXEs19Yx90KmRDdHigQagrIJsg+UpFSv5twlvUMsrMeXSbnSaBQYpOvBMI
	90LWwyCK9k6DE9mxNCD3nOJv/CO9SrMmov6UfatRaOa1s0vMrWhiOo1K2ZzZcKz5FX3gNm3itb+re
	w58d7iBpTUEleDW+MnFkGJwLTwxBayT2o4iAL7G9bNdzkZui8owlxeWiKXX3Kl0yxC9AcK7JymsN+
	sJkMKWaNuaHZeMIGz3fWfPA1BOhI/HgIt1GsOps8Bqo8Gk7FlnpL5z76g8Y8NvTy01+Rd8+hqloO3
	SFKaDVMMJkrLb1yuSyzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQyJ-0003A8-Tw; Fri, 03 Apr 2020 18:23:15 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQxA-0001s2-Os
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:22:06 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 8B3BA6055C;
 Fri,  3 Apr 2020 20:21:52 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 8B3BA6055C
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 8B3BA6055C
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:52 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:55 +0200
Message-Id: <20200403182056.43730-8-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112204_978546_424AE553 
X-CRM114-Status: UNSURE (   9.42  )
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
Subject: [OpenWrt-Devel] [PATCH 7/8] ramips: enable mikrotik platform driver
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
IHRhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0IHwgMiArKwogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMv
bXQ3NjIxL2NvbmZpZy00LjE0IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTQu
MTQKaW5kZXggMmFlNmFmYjk3Zi4uYTkwZjhhZDZjZCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9tdDc2MjEvY29uZmlnLTQuMTQKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2
MjEvY29uZmlnLTQuMTQKQEAgLTE4Miw2ICsxODIsOCBAQCBDT05GSUdfTUlQU19TUFJBTT15CiAj
IENPTkZJR19NSVBTX1ZQRV9MT0FERVIgaXMgbm90IHNldAogQ09ORklHX01PRFVMRVNfVVNFX0VM
Rl9SRUw9eQogQ09ORklHX01UNzYyMV9XRFQ9eQorQ09ORklHX01JS1JPVElLPXkKK0NPTkZJR19S
T1VURVJCT09UX1NZU0ZTX0NGRz15CiAjIENPTkZJR19NVERfQ0ZJX0lOVEVMRVhUIGlzIG5vdCBz
ZXQKIENPTkZJR19NVERfQ01ETElORV9QQVJUUz15CiBDT05GSUdfTVREX00yNVA4MD15Ci0tIAoy
LjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
