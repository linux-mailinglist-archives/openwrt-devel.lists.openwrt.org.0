Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC1012F25B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 01:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gfqm8w5OEhJ4cpdnGekVyjHRypkYGJzwQWxgWB8Iha0=; b=pEhJRPaVRMeh8j
	PchzTmuoCaiTttiimDen/XkfZ1pf4ChxroF0wULXzm24UC1gdSwngPIysQvDMgxd/qzCwzDFgHQ31
	2XA8b2Bb7uWizYsCBhDHHqy9P7ZMo1aH77nWu40l5qIrVmA1Ss2H+4Aa9mMacdDclVuVl3/cn4mVl
	8+boTtDHAIH84zxaZNAaSjlLX/xR8iBivZpPWIBsDsyiJoVxI7AO5w4IrC1Cm0EYgdOVAPR2IS/lQ
	U/XCvXYVHZVQqKPCdAnjvmeqcce1Ai3d0XwPmMFenpfssJFyxd9dhJVSzCNEJBa0tmnjtHEFJ8ZDC
	0k4NG48zuXR3wvoH/MTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inB7N-0008Mq-HM; Fri, 03 Jan 2020 00:47:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inB70-0008D3-Mn
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 00:46:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CBFDB36CD;
 Fri,  3 Jan 2020 01:46:42 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9ceca4fd;
 Fri, 3 Jan 2020 01:46:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 01:46:36 +0100
Message-Id: <20200103004638.16307-3-ynezz@true.cz>
In-Reply-To: <20200103004638.16307-1-ynezz@true.cz>
References: <20200103004638.16307-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_164646_912249_FF75D04A 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 2/4] system: fix failing image
 validation due to EINTR
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SXQgd2FzIHF1aXRlIGNvbW1vbiB0byBzZWUgZm9sbG93aW5nIGVycm9yIGR1cmluZyBzeXN1cGdy
YWRlIG9uIHNlcmlhbApjb25zb2xlOgoKIEZhaWxlZCB0byBwYXJzZSBKU09OOiA0CgpUaGlzIGlz
IGhhcHBlbmluZyBkdWUgdG8gdGhlIGZhY3QsIHRoYXQgdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2Vf
Y2FsbApmb3JrKClzIHRoZW4gd2FpdHMgaW4gYmxvY2tpbmcgcmVhZCgpIGZvciB0aGUgaW5wdXQg
ZnJvbSB0aGUgY2hpbGQKcHJvY2VzcywgYnV0IGNoaWxkIGZpbmlzaGVzIGl0cyB0YXNrcyBhbmQg
ZXhpdHMsIHRodXMgZW1pdHRpbmcgU0lHQ0hMRApzaWduYWwgd2hpY2ggdGhlbiBsZWFkcyB0byB0
aGUgaW50ZXJydXB0aW9uIG9mIHRoZSBibG9ja2luZyByZWFkKCkgaW4KdGhlIHBhcmVudCBwcm9j
ZXNzIHdpdGggRUlOVFIgZXJyb3IuCgpJdCBzZWVtcyBsaWtlIHRoZSByZWNlbnQgZml4ZXMgaW4g
dGhlIGxpYnVib3ggbGlicmFyeSwgcGFydGljdWxhcnkgaW4KdGhlIGpzaG4gc3ViLWNvbXBvbmVu
dCAod2hpY2ggZW1wb3dlcnMganNvbl9kdW1wIHVzZWQgaW4gdGhlIHNoZWxsCnNjcmlwdCBleGVj
dXRlZCBieSB0aGUgY2hpbGQgcHJvY2VzcykgbWFkZSB0aGUgZXhlY3V0aW9uIHNvbWVob3cgZmFz
dGVyLAp0aHVzIGV4cG9zaW5nIHRoaXMgcmFjeSBiZWhhdmlvdXIgaW4gdGhlIHZhbGlkYXRlX2Zp
cm13YXJlX2ltYWdlX2NhbGwgYXQKbGVhc3Qgb24gUlBpLTQgKENvcnRleC1BNzIpIHRhcmdldC4K
ClNvIHRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBpc3N1ZSBieSBjaGVja2luZyB0aGUgcmVhZCgpIHJl
dHVybiB2YWx1ZSBhbmQKcmV0cnlpbmcgdGhlIHJlYWQoKSBpZiBpbnRlcnJ1cHRlZCBkdWUgdG8g
dGhlIEVJTlRSIGVycm9yLgoKUmVmOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1h
aWwvb3BlbndydC1kZXZlbC8yMDIwLUphbnVhcnkvMDIwOTk0Lmh0bWwKRml4ZXM6IGU5OTBlMjE1
ZThhMyAoInN5c3RlbTogYWRkICJ2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSIgdWJ1cyBtZXRob2Qi
KQpDYzogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgpSZXBvcnRlZC1ieTogUGV0
ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KLS0tCiBzeXN0ZW0uYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0uYwppbmRleCA2NWQzZjA5
YjdmYjYuLjVjZDg4ZTBkODIyNyAxMDA2NDQKLS0tIGEvc3lzdGVtLmMKKysrIGIvc3lzdGVtLmMK
QEAgLTQ2Niw2ICs0NjYsOSBAQCBzdGF0aWMgaW50IHZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlX2Nh
bGwoY29uc3QgY2hhciAqZmlsZSkKIAogCWJsb2JfYnVmX2luaXQoJmIsIDApOwogCXdoaWxlICgo
bGVuID0gcmVhZChmZHNbMF0sIGJ1Ziwgc2l6ZW9mKGJ1ZikpKSkgeworCQlpZiAobGVuIDwgMCAm
JiBlcnJubyA9PSBFSU5UUikKKwkJCWNvbnRpbnVlOworCiAJCWpzb2JqID0ganNvbl90b2tlbmVy
X3BhcnNlX2V4KHRvaywgYnVmLCBsZW4pOwogCiAJCWlmIChqc29uX3Rva2VuZXJfZ2V0X2Vycm9y
KHRvaykgPT0ganNvbl90b2tlbmVyX3N1Y2Nlc3MpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
