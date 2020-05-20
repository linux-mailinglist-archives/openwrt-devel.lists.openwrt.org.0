Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B552C1DB0CC
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 12:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekMvJmVfhIUQuyH27aWiTvqOZ1yd3QAtbP3NvmE0D5I=; b=V+g92h5FCyIIfB
	ixM3nUtWzLkVDDi7KXpMf+LifAdI1sf57Te7+Eh420xAYI3bYWt3uWVLAFlI3b7jhVW0xpsM247pr
	Zm8UB7YAJDYYldjyE6I7M0Hitdi4hxUMjX3A6wbyorsr66TfcnI2ctI39Z1elkuSwn+fFpBRVQqUf
	sUehtNDdddND9nvibD6/2HUWQRpAcNrV19BOoZJCHI5ohBJsKQki8BZ+9yxKXW01cIHdSffiFoWlD
	/R6LLFLrKzL3JOjIsyLzvwfVwoQd59GyAgom8gUUaNiaM9W6mWf9RpuquUoaPyIfaVc7Hmjgh+Bfn
	Kms7CTN8k283eueDMv/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMRf-0000aC-5I; Wed, 20 May 2020 10:59:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMRY-0000ZM-Fi
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 10:59:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A52356A76;
 Wed, 20 May 2020 12:59:20 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8d2c4e2f;
 Wed, 20 May 2020 12:59:02 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 12:59:13 +0200
Message-Id: <20200520105913.29246-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_035924_673404_B4778048 
X-CRM114-Status: UNSURE (   4.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: nand: disable images for
 glinet_gl-ar750s
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2VlbXMgbGlrZSBrZXJuZWwgZG9lc24ndCBmaXQgaW50byAyTSBhbnltb3JlLiBGaXhlcyBmb2xs
b3dpbmcgYnVpbGQgZmFpbHVyZXM6CgogV0FSTklORzogSW1hZ2UgZmlsZSBnbGluZXRfZ2wtYXI3
NTBzLW5vci1rZXJuZWwuYmluIGlzIHRvbyBiaWcKIFdBUk5JTkc6IEltYWdlIGZpbGUgZ2xpbmV0
X2dsLWFyNzUwcy1ub3ItbmFuZC1rZXJuZWwuYmluIGlzIHRvbyBiaWcKCkNjOiBKZWZmIEtsZXRz
a3kgPGdpdC1jb21taXRzQGFsbHljb21tLmNvbT4KQ2M6IENodWFuaG9uZyBHdW8gPGdjaDk4MTIx
M0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
Ci0tLQogdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsgfCAyICsrCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2lt
YWdlL25hbmQubWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvbmFuZC5tawppbmRleCA3NmZl
ZTM0YTkwZTEuLmE2OGYzOTAwZDE2YyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2lt
YWdlL25hbmQubWsKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsKQEAgLTEz
NCw2ICsxMzQsNyBAQCBkZWZpbmUgRGV2aWNlL2dsaW5ldF9nbC1hcjc1MHMtbm9yLW5hbmQKIAlh
cHBlbmQtdWJpIHwgY2hlY2sta2VybmVsLXNpemUgJCQkJChHTF9VQk9PVF9VQklfT0ZGU0VUKQog
ICBJTUFHRS9zeXN1cGdyYWRlLmJpbiA6PSBzeXN1cGdyYWRlLXRhciB8IGFwcGVuZC1tZXRhZGF0
YQogICBTVVBQT1JURURfREVWSUNFUyArPSBnbGluZXQsZ2wtYXI3NTBzLW5vcgorICBERUZBVUxU
IDo9IG4KIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSBnbGluZXRfZ2wtYXI3NTBzLW5vci1uYW5k
CiAKQEAgLTE0Miw2ICsxNDMsNyBAQCBkZWZpbmUgRGV2aWNlL2dsaW5ldF9nbC1hcjc1MHMtbm9y
CiAgIERFVklDRV9WQVJJQU5UIDo9IE5PUgogICBCTE9DS1NJWkUgOj0gNjRrCiAgIFNVUFBPUlRF
RF9ERVZJQ0VTICs9IGdsLWFyNzUwcyBnbGluZXQsZ2wtYXI3NTBzIGdsaW5ldCxnbC1hcjc1MHMt
bm9yLW5hbmQKKyAgREVGQVVMVCA6PSBuCiBlbmRlZgogVEFSR0VUX0RFVklDRVMgKz0gZ2xpbmV0
X2dsLWFyNzUwcy1ub3IKIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
