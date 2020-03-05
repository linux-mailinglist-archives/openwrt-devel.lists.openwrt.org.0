Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3C017A1AF
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 09:50:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8pKh5WVRbL8jJb55hpN610FqGX5E//kylsaM/8ml+xg=; b=R99BBO5RE9FcUg
	ybVSqHfRHicgOkgnyF4ioR7JkMf+JfG11E4JEfKXe/zIjbuq119Dp4b5KSBwBIJowYzr9SHwguXkn
	lE9ckaO+DV4yue4gNJ/3LvQkPLs3LQp5lChMEy2hYepii+wjD8/IxsdynZnP4IWPBb6KZBDBF+hUp
	chLe5BwOA809/GKrApDOPoSKzr2IbUVIHDABs0QeiCvtj6BqYuV7RzNg6oxszSQJiGFKHJMW7ZKig
	HOoNJY6xlROp2lovOygqGDTFL0u5/Q67SR2zK0QQjX2/aYYTWLq2jX99NVBrTNZZ60Y0lRaN2PuY7
	YnDWWb12FkF2ylyXn8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mCW-0008FQ-NF; Thu, 05 Mar 2020 08:49:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mCL-0008Et-QD
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 08:49:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7FFDF332F;
 Thu,  5 Mar 2020 09:49:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0da70f2a;
 Thu, 5 Mar 2020 09:49:14 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 09:49:12 +0100
Message-Id: <20200305084912.14659-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_004941_998904_4BF2E2FE 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Jo-Philip Wich <jow@mein.io>,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IDQzMmVjMjkyY2NjOCAoInJwY2Q6IGFkZCByZXNwYXduIHBhcmFtIikgaGFzIGludHJv
ZHVjZWQgaW5maW5pdGUKcmVzdGFydGluZyBvZiB0aGUgc2VydmljZSB3aGljaCBjb3VsZCBiZSBy
ZWFjaGVkIG92ZXIgbmV0d29yay4gVGhpcyBpcwpub3QgcmVjb21tZW5kZWQgc2VjdXJpdHkgcHJh
Y3RpY2UgYXMgaXQgbWlnaHQgZ2l2ZSBwb3RlbnRpYWwgYWR2ZXJzYXJ5CmluZmluaXRlIG51bWJl
ciBvZiB0cmllcyBpbiBjYXNlIHRoZXJlIG1pZ2h0IGJlIHNvbWUgaXNzdWUgaW4gdGhlIHJwY2QK
b3IgaXRzIHN1cnJvdW5kaW5nIHN0YWNrLgoKU28gbGV0cyByZW1vdmUgdGhlIGN1cnJlbnRseSBi
b2d1cyBgcmVzcGF3bl9yZXRyeWAgdmFyaWFibGUgKGl0IHdhc24ndApwb3NzaWJsZSB0byBvdmVy
cmlkZSBpdCBhbnl3YXkpLCByZXZlcnRpbmcgdG8gdGhlIHByZXZpb3VzIGRlZmF1bHQgbWF4Lgpv
ZiA1IHNlcnZpY2UgcmVzdGFydHMgd2hpY2ggY291bGQgYmUgbm93IG92ZXJyaWRlbiB2aWEgc3lz
dGVtJ3MgVUNJCnNldHRpbmdzIGlmIGRlc2lyZWQuCgpDYzogSm8tUGhpbGlwIFdpY2ggPGpvd0Bt
ZWluLmlvPgpDYzogRmxvcmlhbiBFY2tlcnQgPGZlQGRldi50ZHQuZGU+CkNjOiBIYXVrZSBNZWhy
dGVucyA8aGF1a2VAaGF1a2UtbS5kZT4KRml4ZXM6IDQzMmVjMjkyY2NjOCAoInJwY2Q6IGFkZCBy
ZXNwYXduIHBhcmFtIikKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCiBwYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3JwY2QuaW5pdCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Bh
Y2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0IGIvcGFja2FnZS9zeXN0ZW0vcnBjZC9m
aWxlcy9ycGNkLmluaXQKaW5kZXggM2U5ZWE1YmJmMzI5Li5mNzVkMGUwZjBlZWEgMTAwNzU1Ci0t
LSBhL3BhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0CisrKyBiL3BhY2thZ2Uvc3lz
dGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0CkBAIC0xMiw3ICsxMiw3IEBAIHN0YXJ0X3NlcnZpY2Uo
KSB7CiAKIAlwcm9jZF9vcGVuX2luc3RhbmNlCiAJcHJvY2Rfc2V0X3BhcmFtIGNvbW1hbmQgIiRQ
Uk9HIiAke3NvY2tldDorLXMgIiRzb2NrZXQifSAke3RpbWVvdXQ6Ky10ICIkdGltZW91dCJ9Ci0J
cHJvY2Rfc2V0X3BhcmFtIHJlc3Bhd24gJHtyZXNwYXduX3JldHJ5Oi0wfQorCXByb2NkX3NldF9w
YXJhbSByZXNwYXduCiAJcHJvY2RfY2xvc2VfaW5zdGFuY2UKIH0KIAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
