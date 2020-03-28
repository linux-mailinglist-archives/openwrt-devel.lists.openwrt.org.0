Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532061966B8
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csmG0rU5UOYmS9iu6Q8zXMMsb3jW8WGytCGSSmkurqc=; b=JvoQfWGYfEV/xc
	WUeiUCL8fW8bEpDUcmu0tZbPe2K8q1LosfAYboyyR/8I5KgWHNE1aO9aKDzdYH99Lfgf+aujrGCfv
	M/ohLZ+oua7Q5x/tzerkQhGyqw9BNZdtEHvp+c6YQbO25kLu1cL6JwSG6wZn1eRk1Wo/qCYwaE2Z4
	mOlif6jWZ7zZY1K7ORs9X29Rv0/Prt5+yZpYQ0gDOk6epLiiM49xlgXumcyWhB58zctMqR3LTRRai
	uyjuPxG7TjvNGWLOa1qZQG5x6sxqpsVCTjG2dLFI1N1GwAWCDhCIc2nlaZ2jY8Lr3Ol1b52x5UzxU
	LMlbvtR9JnvUvVJto5rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICMY-0001hd-KQ; Sat, 28 Mar 2020 14:23:02 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICL3-0008Aq-TG
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:31 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 52FAC6055D;
 Sat, 28 Mar 2020 15:21:26 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 52FAC6055D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 52FAC6055D
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:25 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:31 +0100
Message-Id: <20200328142032.37734-11-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072130_106016_5B0F5A55 
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
Subject: [OpenWrt-Devel] [PATCH 10/11] ramips: MikroTik RBM11G routerboot
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
IHRhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rpa19yYm0xMWcuZHRzIHwgMTIg
KysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMV9taWtyb3Rp
a19yYm0xMWcuZHRzIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3Ji
bTExZy5kdHMKaW5kZXggNjBiNjM5NWMxNy4uNGU1ZjU5MTVlMyAxMDA2NDQKLS0tIGEvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JibTExZy5kdHMKKysrIGIvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIxX21pa3JvdGlrX3JibTExZy5kdHMKQEAgLTk1LDE5ICs5
NSwxNyBAQAogCQkJCWxhYmVsID0gIlJvdXRlckJvb3QiOwogCQkJCXJlZyA9IDwweDAgMHg0MDAw
MD47CiAJCQkJcmVhZC1vbmx5OwotCQkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7
CisJCQkJY29tcGF0aWJsZSA9ICJtaWtyb3Rpayxyb3V0ZXJib290LXBhcnRpdGlvbnMiOwogCQkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkJCSNzaXplLWNlbGxzID0gPDE+OwogCiAJCQkJcGFy
dGl0aW9uQDAgewogCQkJCQlsYWJlbCA9ICJib290bG9hZGVyMSI7Ci0JCQkJCXJlZyA9IDwweDAg
MHhmMDAwPjsKKwkJCQkJcmVnID0gPDB4MCAweDA+OwogCQkJCQlyZWFkLW9ubHk7CiAJCQkJfTsK
IAotCQkJCWhhcmRfY29uZmlnOiBwYXJ0aXRpb25AZjAwMCB7Ci0JCQkJCWxhYmVsID0gImhhcmRf
Y29uZmlnIjsKLQkJCQkJcmVnID0gPDB4ZjAwMCAweDEwMDA+OworCQkJCWhhcmRfY29uZmlnOiBo
YXJkX2NvbmZpZyB7CiAJCQkJCXJlYWQtb25seTsKIAkJCQl9OwogCkBAIC0xMTcsOSArMTE1LDcg
QEAKIAkJCQkJcmVhZC1vbmx5OwogCQkJCX07CiAKLQkJCQlwYXJ0aXRpb25AMjAwMDAgewotCQkJ
CQlsYWJlbCA9ICJzb2Z0X2NvbmZpZyI7Ci0JCQkJCXJlZyA9IDwweDIwMDAwIDB4MTAwMD47CisJ
CQkJc29mdF9jb25maWcgewogCQkJCX07CiAKIAkJCQlwYXJ0aXRpb25AMzAwMDAgewotLSAKMi4x
MS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
