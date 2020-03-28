Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D571966B5
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzjLXB4mes9RHID3l2cdGxdH0irZEkMwpHBAbS4g2yA=; b=Y8frG14ng65HZy
	mhjpi1CCa/bYo3Bk9fN6UU/rasAPUdI5Z3PDfnOruSszpsU1D/J/RcCHyTjDRbN6dqc2ZiBdnHU6X
	RDz8mt744qZRdjskltki/YXHOqhCQVym3j/Ocvr+mg743lAGxq8x/CRKWYN3YRkd9aShaUriRWqEI
	P9iIalfnQsrjGWYoJBAJ5u5PYU5VUrSOXmmyd3Ng00Bf6akLtten7CXQCPwBa9GQiVU0OgRDkdg0V
	l4I2MNZlVzgU8K0GC2I6yQR6Tm3u+cQQLcVKF+EeYrvmVWDee/oOSMI0BAW1DlhkbbXPeTpjDu1Yd
	p7mPloamtlYg9duuAy1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICMB-0001AQ-5v; Sat, 28 Mar 2020 14:22:39 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKx-00082E-8u
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:25 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 0A7D56055D;
 Sat, 28 Mar 2020 15:21:18 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 0A7D56055D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 0A7D56055D
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:18 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:29 +0100
Message-Id: <20200328142032.37734-9-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072123_480415_05ECE0CC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
Subject: [OpenWrt-Devel] [PATCH 08/11] ramips: mt7621: enable
 CONFIG_MTD_ROUTERBOOT_PARTS
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
IHRhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0IHwgMSArCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL210
NzYyMS9jb25maWctNC4xNCBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0
CmluZGV4IDJhZTZhZmI5N2YuLmQ4YzhjOTVkMzAgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9y
YW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0CisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIx
L2NvbmZpZy00LjE0CkBAIC0xODgsNiArMTg4LDcgQEAgQ09ORklHX01URF9NMjVQODA9eQogQ09O
RklHX01URF9OQU5EPXkKIENPTkZJR19NVERfTkFORF9FQ0M9eQogQ09ORklHX01URF9QSFlTTUFQ
PXkKK0NPTkZJR19NVERfUk9VVEVSQk9PVF9QQVJUUz15CiBDT05GSUdfTVREX1NQSV9OT1I9eQog
Q09ORklHX01URF9TUExJVF9NSU5PUl9GVz15CiBDT05GSUdfTVREX1NQTElUX1NFQU1BX0ZXPXkK
LS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
