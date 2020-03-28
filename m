Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C61966B7
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLNMJyi0JDd4p2xFCnSs4OhhPOI/ccj5cOIGqGrweek=; b=j/kOhfAfgYnjKM
	Yi5IGmiM2XwZk7E0xinv/aYQ3BppyRNi3rZ6QUiBVAvMj/vzsPoxd87HpDE5JDoqmigzelgp1RMz+
	aFcQ6IDED20Jl8OebxKyRDlUK3FwC/GeZQQUb4lcDO3BWFUUhHwEjgXN73D7nluHPUvrbzxtXb3bd
	MrRawSUFRxSbGgrjm/T/f20/NHSVPeFYtbAAJKYwQNQon8RPPSmY1n8Uj+AKChdMJUMILdYbrd0uk
	I4xJn4HWCt4MKq/0WpXLX5ga/5PAoXPQ+0/B9u1LjdwqnxlVXCN6Ef411V7oR7eTd4+h6e2dEteGo
	/hXUpxtBzPcoHlpcVfng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICMO-0001TY-8F; Sat, 28 Mar 2020 14:22:52 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICL1-00086X-EH
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:29 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id B47BF600A7;
 Sat, 28 Mar 2020 15:21:22 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org B47BF600A7
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org B47BF600A7
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:22 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:30 +0100
Message-Id: <20200328142032.37734-10-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072127_656633_03AFD8CC 
X-CRM114-Status: UNSURE (   9.55  )
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
Subject: [OpenWrt-Devel] [PATCH 09/11] ramips: MikroTik RB750GR3 routerboot
 partitions
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
IHRhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rpa19yYjc1MGdyMy5kdHMgfCAx
MiArKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3Jv
dGlrX3JiNzUwZ3IzLmR0cyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rp
a19yYjc1MGdyMy5kdHMKaW5kZXggZGEyYjU3MWRkNC4uYjhmNTZhZmI1MiAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JiNzUwZ3IzLmR0cworKysg
Yi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjFfbWlrcm90aWtfcmI3NTBncjMuZHRzCkBA
IC04NiwxOSArODYsMTcgQEAKIAkJCQlsYWJlbCA9ICJSb3V0ZXJCb290IjsKIAkJCQlyZWcgPSA8
MHgwIDB4NDAwMDA+OwogCQkJCXJlYWQtb25seTsKLQkJCQljb21wYXRpYmxlID0gImZpeGVkLXBh
cnRpdGlvbnMiOworCQkJCWNvbXBhdGlibGUgPSAibWlrcm90aWsscm91dGVyYm9vdC1wYXJ0aXRp
b25zIjsKIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJCQkjc2l6ZS1jZWxscyA9IDwxPjsK
IAogCQkJCXBhcnRpdGlvbkAwIHsKIAkJCQkJbGFiZWwgPSAiYm9vdGxvYWRlcjEiOwotCQkJCQly
ZWcgPSA8MHgwIDB4ZjAwMD47CisJCQkJCXJlZyA9IDwweDAgMHgwPjsKIAkJCQkJcmVhZC1vbmx5
OwogCQkJCX07CiAKLQkJCQloYXJkX2NvbmZpZzogcGFydGl0aW9uQGYwMDAgewotCQkJCQlsYWJl
bCA9ICJoYXJkX2NvbmZpZyI7Ci0JCQkJCXJlZyA9IDwweGYwMDAgMHgxMDAwPjsKKwkJCQloYXJk
X2NvbmZpZzogaGFyZF9jb25maWcgewogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsKIApAQCAtMTA4
LDkgKzEwNiw3IEBACiAJCQkJCXJlYWQtb25seTsKIAkJCQl9OwogCi0JCQkJcGFydGl0aW9uQDIw
MDAwIHsKLQkJCQkJbGFiZWwgPSAic29mdF9jb25maWciOwotCQkJCQlyZWcgPSA8MHgyMDAwMCAw
eDEwMDA+OworCQkJCXNvZnRfY29uZmlnIHsKIAkJCQl9OwogCiAJCQkJcGFydGl0aW9uQDMwMDAw
IHsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
