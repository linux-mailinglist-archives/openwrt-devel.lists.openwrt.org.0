Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D431B0C62
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBOo092ih4bes1T9+3sJmGt3I7QgfWNtOlb1prz0C9A=; b=UvI8dWpTnAoooA
	rTz8ajv4eylgj7wYI8GEh8HrDTVqK4DWXclFFdWpXFfIwcvgqMVUFCEr/5EvvMzSBsHRbKwtsBKAG
	l2//MA/M2qEn+Xdxj8Ts/d6C4mMdiOzUaSfl6QOecrg3Zc6iXO99UQmUZv0Y2vogm0HBIcpulFbcK
	e/w3G3sXR4kndEsenvmVMsrB3sWAsre1g3l0yD4Nz1f1vk1TjtSr4M5dYJAAwSqTp8y0/RMr830zJ
	R6hXn522JF3E8L+JGfo8eXx6oXmHiKC+dWvFaM1wUmlUtI9uIhi0XRw19RijJSvCFQy4xTecfXU/B
	1Bz5Kjgm2bxvxz/3mI8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWGw-0000i2-RV; Mon, 20 Apr 2020 13:15:38 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWFW-0005IO-OP
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:14:12 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 7FAA660335;
 Mon, 20 Apr 2020 15:14:06 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 7FAA660335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 7FAA660335
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587388447; bh=iJHpuwqU4B9MYVv9cYeJOkaF/XkmBZplYD39MczBX6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AoKaBKTkWHQg0wjiSGMZC675A59hX8frLptaafRnFqKXBPG39mI4vH8j7Cw59OyNE
 LQQ5jIQWm01gD/y7bZm9+dCWL6Jd45YFYZsagMy2BZwspTENX9v5VSVUbgADevRsTJ
 AQrSQad6IMi2AP8+cviJAdVYJ/H41lme3mDhCEhE=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:14:06 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:13:35 +0200
Message-Id: <20200420131336.18252-6-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420131336.18252-1-hacks@slashdirt.org>
References: <20200420131336.18252-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_061410_980206_7760EFEA 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [OpenWrt-Devel] [PATCH v2 5/6] ramips/mt7621: enable
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0IHwgMSArCiB0YXJnZXQvbGlu
dXgvcmFtaXBzL210NzYyMS9jb25maWctNS40ICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9jb25m
aWctNC4xNCBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0CmluZGV4IDJh
ZTZhZmI5N2YuLmQ4YzhjOTVkMzAgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3
NjIxL2NvbmZpZy00LjE0CisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00
LjE0CkBAIC0xODgsNiArMTg4LDcgQEAgQ09ORklHX01URF9NMjVQODA9eQogQ09ORklHX01URF9O
QU5EPXkKIENPTkZJR19NVERfTkFORF9FQ0M9eQogQ09ORklHX01URF9QSFlTTUFQPXkKK0NPTkZJ
R19NVERfUk9VVEVSQk9PVF9QQVJUUz15CiBDT05GSUdfTVREX1NQSV9OT1I9eQogQ09ORklHX01U
RF9TUExJVF9NSU5PUl9GVz15CiBDT05GSUdfTVREX1NQTElUX1NFQU1BX0ZXPXkKZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy01LjQgYi90YXJnZXQvbGludXgv
cmFtaXBzL210NzYyMS9jb25maWctNS40CmluZGV4IGU5MTAwM2Q4ZDIuLjY1YjEwYjgwZTQgMTAw
NjQ0Ci0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy01LjQKKysrIGIvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTUuNApAQCAtMjA1LDYgKzIwNSw3IEBAIENP
TkZJR19NVERfTkFORF9FQ0NfU1dfSEFNTUlORz15CiBDT05GSUdfTVREX05BTkRfTVQ3NjIxPXkK
IENPTkZJR19NVERfUEhZU01BUD15CiBDT05GSUdfTVREX1JBV19OQU5EPXkKK0NPTkZJR19NVERf
Uk9VVEVSQk9PVF9QQVJUUz15CiBDT05GSUdfTVREX1NQSV9OT1I9eQogQ09ORklHX01URF9TUExJ
VF9NSU5PUl9GVz15CiBDT05GSUdfTVREX1NQTElUX1NFQU1BX0ZXPXkKLS0gCjIuMTEuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
