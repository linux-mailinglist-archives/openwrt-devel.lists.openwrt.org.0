Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035BACDD24
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 10:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HgGa/7WgBYBGSAAUtWP1YFAsxQaCycv+WpZy3r5vGLU=; b=WxoxBGru+Rl62H
	n90t6iEZ7dnvEBfDY4CQGjJiY9RO6ELMzI86HnP2Jea0x+Wn4rq/5xyUvJbtD566M2KocZp7W2CC+
	HbEAeib90LcGp8qRwd9PuivhNvR+No0d+fb0zrMjLWjDHdeYKMDnUiD32shhgY9c99YS/OFcjXZYR
	X7yywZhJOT3ORcbPjjPXOUskEQA0sHe7WWH38KRUrqDQ4E9BIZYp1iB8VYuelGtlUxuEqzNJM8+lS
	lPUvyZ33WivmsyR33KEE80/CbcZZwjaMh6fhnkmcb+4++Z1+pvxQAJTUJcwLXUDIUXCPBTLeWOFpe
	oAorF+kZhBuPzcki2s9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOHs-0006JP-9C; Mon, 07 Oct 2019 08:22:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOHg-0006It-PD
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 08:22:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1E8CD4D9B;
 Mon,  7 Oct 2019 10:22:19 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 40160a65;
 Mon, 7 Oct 2019 10:22:09 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 10:22:04 +0200
Message-Id: <20191007082204.30380-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <7b533443-c8d0-69ac-66fd-4602c423fade@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_012224_972973_1249ED30 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q3VycmVudCBmYWN0b3J5IGltYWdlcyBhcmUgYnVpbHQgb24gdG9wIG9mIHN5c3VwZ3JhZGUgaW1h
Z2VzIHdoaWNoCmNvbnRhaW5zIG1ldGFkYXRhIHdoaWNoIGFyZSBjYXVzaW5nIGltYWdlIHJlcHJv
ZHVjaWJpbGl0eSBpc3N1ZXMsIHNvCmxldCdzIGJ1aWxkIGZhY3RvcnkgaW1hZ2VzIGZyb20gdGhl
IHNjcmF0Y2guIFdoaWxlIGF0IGl0LCByZWZhY3RvciB0aGUKc2hhcmVkIHZhcnMgaW50byBjb21t
b24gYmFzZSBhcyB3ZWxsLgoKUmVmOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1h
aWwvb3BlbndydC1kZXZlbC8yMDE5LU9jdG9iZXIvMDE5MjA1Lmh0bWwKUmVwb3J0ZWQtYnk6IFBh
dWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy11
Ym50Lm1rIHwgMjQgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4
L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5tayBiL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9n
ZW5lcmljLXVibnQubWsKaW5kZXggNmFlNzY2ZTI5MzMxLi45YWIxMTMyNGI0MTEgMTAwNjQ0Ci0t
LSBhL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsKKysrIGIvdGFyZ2V0
L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5tawpAQCAtMTE0LDQwICsxMTQsNDAgQEAg
ZGVmaW5lIERldmljZS91Ym50X2J1bGxldC1tLXh3CiBlbmRlZgogVEFSR0VUX0RFVklDRVMgKz0g
dWJudF9idWxsZXQtbS14dwogCitkZWZpbmUgRGV2aWNlL3VibnQtbmFuby1hYworICBERVZJQ0Vf
UEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QKKyAg
SU1BR0VfU0laRSA6PSAxNTc0NGsKKyAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gYXBwZW5kLWtlcm5l
bCB8IHBhZC10byAkJCQkKEJMT0NLU0laRSkgfCBcCisJYXBwZW5kLXJvb3RmcyB8IHBhZC1yb290
ZnMgfCBta3VibnRpbWFnZS1zcGxpdCB8IFwKKwljaGVjay1zaXplICQkJCQoSU1BR0VfU0laRSkK
K2VuZGVmCisKIGRlZmluZSBEZXZpY2UvdWJudF9sYXAtMTIwCiAgICQoRGV2aWNlL3VibnQtd2Ep
CiAgIERFVklDRV9NT0RFTCA6PSBMaXRlQVAgYWMKICAgREVWSUNFX1ZBUklBTlQgOj0gTEFQLTEy
MAotICBERVZJQ0VfUEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFj
YTk4OHgtY3QKLSAgSU1BR0VfU0laRSA6PSAxNTc0NGsKLSAgSU1BR0UvZmFjdG9yeS5iaW4gOj0g
JCQoSU1BR0Uvc3lzdXBncmFkZS5iaW4pIHwgbWt1Ym50aW1hZ2Utc3BsaXQKKyAgJChEZXZpY2Uv
dWJudC1uYW5vLWFjKQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHVibnRfbGFwLTEyMAogCiBk
ZWZpbmUgRGV2aWNlL3VibnRfbmFub2JlYW0tYWMKICAgJChEZXZpY2UvdWJudC13YSkKICAgREVW
SUNFX01PREVMIDo9IE5hbm9CZWFtIEFDCi0gIERFVklDRV9QQUNLQUdFUyArPSBrbW9kLWF0aDEw
ay1jdCBhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAotICBJTUFHRV9TSVpFIDo9IDE1NzQ0awot
ICBJTUFHRS9mYWN0b3J5LmJpbiA6PSAkJChJTUFHRS9zeXN1cGdyYWRlLmJpbikgfCBta3VibnRp
bWFnZS1zcGxpdAorICAkKERldmljZS91Ym50LW5hbm8tYWMpCiBlbmRlZgogVEFSR0VUX0RFVklD
RVMgKz0gdWJudF9uYW5vYmVhbS1hYwogCiBkZWZpbmUgRGV2aWNlL3VibnRfbmFub3N0YXRpb24t
YWMKICAgJChEZXZpY2UvdWJudC13YSkKICAgREVWSUNFX01PREVMIDo9IE5hbm9zdGF0aW9uIEFD
Ci0gIERFVklDRV9QQUNLQUdFUyArPSBrbW9kLWF0aDEway1jdCBhdGgxMGstZmlybXdhcmUtcWNh
OTg4eC1jdAotICBJTUFHRV9TSVpFIDo9IDE1NzQ0awotICBJTUFHRS9mYWN0b3J5LmJpbiA6PSAk
JChJTUFHRS9zeXN1cGdyYWRlLmJpbikgfCBta3VibnRpbWFnZS1zcGxpdAorICAkKERldmljZS91
Ym50LW5hbm8tYWMpCiBlbmRlZgogVEFSR0VUX0RFVklDRVMgKz0gdWJudF9uYW5vc3RhdGlvbi1h
YwogCiBkZWZpbmUgRGV2aWNlL3VibnRfbmFub3N0YXRpb24tYWMtbG9jbwogICAkKERldmljZS91
Ym50LXdhKQogICBERVZJQ0VfTU9ERUwgOj0gTmFub3N0YXRpb24gQUMgbG9jbwotICBERVZJQ0Vf
UEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QKLSAg
SU1BR0VfU0laRSA6PSAxNTc0NGsKLSAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gJCQoSU1BR0Uvc3lz
dXBncmFkZS5iaW4pIHwgbWt1Ym50aW1hZ2Utc3BsaXQKKyAgJChEZXZpY2UvdWJudC1uYW5vLWFj
KQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHVibnRfbmFub3N0YXRpb24tYWMtbG9jbwogCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
