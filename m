Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB6319DDDB
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vduPmLE3HdsMsyBd8+31ochOZxO8nG2pSEsRl+ObHs=; b=YGytquTKCA6B5X
	uad5ThD0NF9W+9cTLsqD928nhLRsm8hcTPHsdEcqXIQrjkeS6ryL3PDwBlh+LOnOWGhLcxx/Dcq3E
	s7lnpALamXSe+4/1RgkRaOJ1IeWoOyLpBUrPlg++14Ep5+IVM+P4prlUSQO6m70cV6jtpceDpz9Q1
	qC3Wo4Czgw8Ut09jAkez8jwwsnZKqX70qO5Ndo+pcsQhfGi3h6z+5k/gMzgc7xChv4oIYFm690Abq
	H0HBbwEImmFVWnX7uDYUdsHG4rK4OjLc7kl3xAPv5gOZwfQzOjZMtWVS6xDSNRZX6Jpmw/dfPBRCf
	1Fq+bAHN1QZnOi4xe5lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQxu-0002ey-BW; Fri, 03 Apr 2020 18:22:50 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQwy-0001Zu-4T
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:21:53 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id D4B4B60335;
 Fri,  3 Apr 2020 20:21:39 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org D4B4B60335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D4B4B60335
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:39 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:53 +0200
Message-Id: <20200403182056.43730-6-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112152_345365_4B2D6C0F 
X-CRM114-Status: UNSURE (   8.78  )
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
Subject: [OpenWrt-Devel] [PATCH 5/8] ath79: enable mikrotik platform driver
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
IHRhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdCB8IDIgKysKIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRo
NzkvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQgYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsv
Y29uZmlnLWRlZmF1bHQKaW5kZXggYTk1ZDEzNDA2YS4uMTFiM2E4YzRiZiAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0CisrKyBiL3RhcmdldC9s
aW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdApAQCAtNiw2ICs2LDggQEAgQ09ORklH
X0dQSU9fV0FUQ0hET0c9eQogQ09ORklHX0dQSU9fV0FUQ0hET0dfQVJDSF9JTklUQ0FMTD15CiBD
T05GSUdfTEVEU19SRVNFVD15CiBDT05GSUdfTFpPX0RFQ09NUFJFU1M9eQorQ09ORklHX01JS1JP
VElLPXkKK0NPTkZJR19ST1VURVJCT09UX1NZU0ZTX0NGRz15CiBDT05GSUdfTVREX05BTkQ9eQog
Q09ORklHX01URF9OQU5EX0FSOTM0WD15CiBDT05GSUdfTVREX05BTkRfQ09SRT15Ci0tIAoyLjEx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
