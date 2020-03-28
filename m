Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1661966B2
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Wonhdeee51zzZXG0eLm7E6KqLzkhT2gVoCnyN3ogic=; b=Fs+cNBkP+cjqo+
	56CbNnV0dn+qA2RVYJC6H35GEFE85fEyQCJQWdpLy1UhP/C74yaCS79F0FoMAOwg9Tnw5QcOLXJEP
	WvWKaygGgUPs7hxfu85zCnhARZq2r7KZIDgM2aoXKB30EcMQWyrt8ioM9gf/SxMUaCOafM02fjASN
	GHJv5p+8Et96+yYYhSyNIBcy6VGy803JbHSDhgIur1SesCIpm66WKbg6KCYAxvXNFyAiqj8pSBjxI
	5nIDeUD2y10lzolM9d4dizjyth9L1L0RqHJFmam79OS+xkAKd/1rY9xD+U9fWFZVugJrGfF/ZN3un
	yeM/CLogtklLpEznogTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICLo-0000gk-MU; Sat, 28 Mar 2020 14:22:16 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKq-0007uB-1F
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:17 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 65CC36055D;
 Sat, 28 Mar 2020 15:21:12 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 65CC36055D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 65CC36055D
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:11 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:27 +0100
Message-Id: <20200328142032.37734-7-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072116_279204_F0C4656A 
X-CRM114-Status: UNSURE (   9.11  )
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
Subject: [OpenWrt-Devel] [PATCH 06/11] ath79: MikroTik RB 922UAGS-5HPacD
 routerboot partitions
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
IC4uLi9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5kdHMg
IHwgMTYgKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
MTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5
NTU4X21pa3JvdGlrX3JvdXRlcmJvYXJkLTkyMnVhZ3MtNWhwYWNkLmR0cyBiL3RhcmdldC9saW51
eC9hdGg3OS9kdHMvcWNhOTU1OF9taWtyb3Rpa19yb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZC5k
dHMKaW5kZXggM2YyYTFhNTFhNi4uOWExYmQ1Mjk0OCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4
L2F0aDc5L2R0cy9xY2E5NTU4X21pa3JvdGlrX3JvdXRlcmJvYXJkLTkyMnVhZ3MtNWhwYWNkLmR0
cworKysgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NThfbWlrcm90aWtfcm91dGVyYm9h
cmQtOTIydWFncy01aHBhY2QuZHRzCkBAIC05OSwzMiArOTksMjggQEAKIAkJc3BpLW1heC1mcmVx
dWVuY3kgPSA8MjUwMDAwMDA+OwogCiAJCXBhcnRpdGlvbnMgewotCQkJY29tcGF0aWJsZSA9ICJm
aXhlZC1wYXJ0aXRpb25zIjsKKwkJCWNvbXBhdGlibGUgPSAibWlrcm90aWsscm91dGVyYm9vdC1w
YXJ0aXRpb25zIjsKIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkJI3NpemUtY2VsbHMgPSA8
MT47CiAKLQkJCXBhcnRpdGlvbkAwIHsKKwkJCXBhcnRpdGlvbjFAMCB7CiAJCQkJbGFiZWwgPSAi
cm91dGVyYm9vdCI7Ci0JCQkJcmVnID0gPDB4MDAwMDAwMCAweDAwMGMwMDA+OworCQkJCXJlZyA9
IDwweDAgMHgwPjsKIAkJCQlyZWFkLW9ubHk7CiAJCQl9OwogCi0JCQloYXJkX2NvbmZpZzogcGFy
dGl0aW9uQGMwMDAgeworCQkJaGFyZF9jb25maWc6IHBhcnRpdGlvbjIgewogCQkJCWxhYmVsID0g
ImhhcmRfY29uZmlnIjsKLQkJCQlyZWcgPSA8MHgwMDBjMDAwIDB4MDAwMTAwMD47CiAJCQkJcmVh
ZC1vbmx5OwogCQkJfTsKIAotCQkJcGFydGl0aW9uQGQwMDAgeworCQkJcGFydGl0aW9uMyB7CiAJ
CQkJbGFiZWwgPSAiYmlvcyI7Ci0JCQkJcmVnID0gPDB4MDAwZDAwMCAweDAwMDEwMDA+OwogCQkJ
CXJlYWQtb25seTsKIAkJCX07CiAKLQkJCXBhcnRpdGlvbkBlMDAwIHsKKwkJCXBhcnRpdGlvbjQg
ewogCQkJCWxhYmVsID0gInNvZnRfY29uZmlnIjsKLQkJCQlyZWcgPSA8MHgwMDBlMDAwIDB4MDAw
MTAwMD47Ci0JCQkJcmVhZC1vbmx5OwogCQkJfTsKIAkJfTsKIAl9OwotLSAKMi4xMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
