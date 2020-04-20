Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7AC1B0CC2
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40SIINJRkxMJUiQ16Xk/GVU75MJbPvCLcKMoGs212qU=; b=MOtIihjlyQXy+1
	DGZ6NzE2r2s+WRGtNIqjzDJY3nreyRTZYEkjqDvO3e6V3IsoAufLhuNFiARwKoRE7GFfB3DQHA5AZ
	qvyYl8GeZBpTHLcu7R3POCuVqSRs+e/8pqIvbsczo7X5A+t5Nvb8GhvrUno44Tz3vnsGTcVtBc+nP
	kSECC1KmXD59mYg4Cmu1Ttu8TZxxa2JObjTroTuAUibLDO9GCalZq/58wl47YzDtACpKWIXep4mRf
	3HvZg/v1rmkKiZCr0rqLQmAiV2Enby7IldANKD0N47RLw1OD0lu3R992detjyvtmUNZvpqaC5X2Id
	E/I3/0gZ0s5ABFBvWLvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWac-0000ld-Dk; Mon, 20 Apr 2020 13:35:58 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWa4-0000Gr-1c
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:25 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id BDAB26055A;
 Mon, 20 Apr 2020 15:35:19 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org BDAB26055A
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org BDAB26055A
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389721; bh=/kEB03oh45V1m6j08VGQSHMGAjB7vzii7pTzKGVzW9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eXcbkvZGtvuoUdWw2JqTkK2Nbkkuur//mPfG3oPR4/3RcNA3SP92dEuw43c/fYdRq
 q8EN8N/VNlNpYUkE0r8wOB4akld7COxP4xStg7kqM1lxK6IEVScreJKQMaxv+0Hwmf
 tdu+wR1LbGWxyqzOF2XohyKwX+dCNZoCe10VWyvc=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:19 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:52 +0200
Message-Id: <20200420133503.18700-4-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063524_251255_9D042688 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 03/14] ath79/mikrotik: enable mikrotik
 platform driver
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdCB8IDIgKysKIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRo
NzkvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQgYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsv
Y29uZmlnLWRlZmF1bHQKaW5kZXggYzBjNjE5ODViYy4uNDNhMzM5ZGI0MSAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0CisrKyBiL3RhcmdldC9s
aW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdApAQCAtNiw2ICs2LDggQEAgQ09ORklH
X0dQSU9fV0FUQ0hET0c9eQogQ09ORklHX0dQSU9fV0FUQ0hET0dfQVJDSF9JTklUQ0FMTD15CiBD
T05GSUdfTEVEU19SRVNFVD15CiBDT05GSUdfTFpPX0RFQ09NUFJFU1M9eQorQ09ORklHX01JS1JP
VElLPXkKK0NPTkZJR19NSUtST1RJS19SQl9TWVNGUz15CiBDT05GSUdfTVREX05BTkQ9eQogQ09O
RklHX01URF9OQU5EX0FSOTM0WD15CiBDT05GSUdfTVREX05BTkRfQ09SRT15Ci0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
