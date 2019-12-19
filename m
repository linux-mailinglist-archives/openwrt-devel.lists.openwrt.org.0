Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAA312703B
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cp99vYPKgfX5B1wbOkiGxijzkOGE8tqc+OGkIgB2ARY=; b=jVJbqkrEQlLIr7
	AXZIz4a80WsExJTNW/dIqXCbWhP/rqH7RIaJep5o+De5Cfocoqs104Kd7La8T5K+QUN22Zgn99CzB
	Qg6+Eh78ytQa9bP606vt48teeM8WzyqTH5b7oSbp0R0lGQLFSWpQdrpfPN227Kf1b8H9CUb92BNiz
	b3/dm83pJWwzrfZecXyql/3I2/Ly1AIkGZXUuLhP5CeYIGYMwXN/qg905Msa/sY3+1OK4y+ZQqGQB
	VEX4lmfpizYITVuliOs8maWF1aBNYee7lYwC3l5yFUpmqeMRWpI+7z5maxM7X/zMly5oI5tlojyC6
	NWEKYQGeHsqP5NqK/vbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3tc-00020u-DB; Thu, 19 Dec 2019 22:03:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3ot-0000x5-C8
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:59:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3F3ED4B55;
 Thu, 19 Dec 2019 22:58:48 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 02d3be27;
 Thu, 19 Dec 2019 22:58:38 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:32 +0100
Message-Id: <20191219215836.21773-17-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135855_593690_08381656 
X-CRM114-Status: UNSURE (   7.11  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 16/20] Ensure blob_attr length check
 does not perform out of bounds reads
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Tobias Schramm <tobleminer@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogVG9iaWFzIFNjaHJhbW0gPHRvYmxlbWluZXJAZ21haWwuY29tPgoKQmVmb3JlIHRoZXJl
IG1pZ2h0IGhhdmUgYmVlbiBhcyBsaXR0bGUgYXMgb25lIHNpbmdsZSBieXRlIGxlZnQgd2hpY2gK
d291bGQgcmVzdWx0IGluIDMgYnl0ZXMgb2YgYmxvYl9hdHRyLT5pZF9sZW4gYmVpbmcgb3V0IG9m
IGJvdW5kcy4KCkFja2VkLWJ5OiBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVG9iaWFzIFNjaHJhbW0gPHRvYmxlbWluZXJAZ21haWwuY29tPgpbbGlu
ZSB3cmFwcGVkIDwgNzIgY2hhcnNdClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+Ci0tLQogYmxvYi5oICAgIHwgNCArKy0tCiBibG9ibXNnLmggfCAyICstCiAyIGZp
bGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9ibG9iLmggYi9ibG9iLmgKaW5kZXggYWYwMzM2MDdlMzA5Li42ZDYxODc2N2I5MWEgMTAwNjQ0
Ci0tLSBhL2Jsb2IuaAorKysgYi9ibG9iLmgKQEAgLTI0Myw3ICsyNDMsNyBAQCBibG9iX3B1dF91
NjQoc3RydWN0IGJsb2JfYnVmICpidWYsIGludCBpZCwgdWludDY0X3QgdmFsKQogCiAjZGVmaW5l
IF9fYmxvYl9mb3JfZWFjaF9hdHRyKHBvcywgYXR0ciwgcmVtKSBcCiAJZm9yIChwb3MgPSAoc3Ry
dWN0IGJsb2JfYXR0ciAqKSBhdHRyOyBcCi0JICAgICByZW0gPiAwICYmIChibG9iX3BhZF9sZW4o
cG9zKSA8PSByZW0pICYmIFwKKwkgICAgIHJlbSA+PSBzaXplb2Yoc3RydWN0IGJsb2JfYXR0cikg
JiYgKGJsb2JfcGFkX2xlbihwb3MpIDw9IHJlbSkgJiYgXAogCSAgICAgKGJsb2JfcGFkX2xlbihw
b3MpID49IHNpemVvZihzdHJ1Y3QgYmxvYl9hdHRyKSk7IFwKIAkgICAgIHJlbSAtPSBibG9iX3Bh
ZF9sZW4ocG9zKSwgcG9zID0gYmxvYl9uZXh0KHBvcykpCiAKQEAgLTI1MSw3ICsyNTEsNyBAQCBi
bG9iX3B1dF91NjQoc3RydWN0IGJsb2JfYnVmICpidWYsIGludCBpZCwgdWludDY0X3QgdmFsKQog
I2RlZmluZSBibG9iX2Zvcl9lYWNoX2F0dHIocG9zLCBhdHRyLCByZW0pIFwKIAlmb3IgKHJlbSA9
IGF0dHIgPyBibG9iX2xlbihhdHRyKSA6IDAsIFwKIAkgICAgIHBvcyA9IChzdHJ1Y3QgYmxvYl9h
dHRyICopIChhdHRyID8gYmxvYl9kYXRhKGF0dHIpIDogTlVMTCk7IFwKLQkgICAgIHJlbSA+IDAg
JiYgKGJsb2JfcGFkX2xlbihwb3MpIDw9IHJlbSkgJiYgXAorCSAgICAgcmVtID49IHNpemVvZihz
dHJ1Y3QgYmxvYl9hdHRyKSAmJiAoYmxvYl9wYWRfbGVuKHBvcykgPD0gcmVtKSAmJiBcCiAJICAg
ICAoYmxvYl9wYWRfbGVuKHBvcykgPj0gc2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpKTsgXAogCSAg
ICAgcmVtIC09IGJsb2JfcGFkX2xlbihwb3MpLCBwb3MgPSBibG9iX25leHQocG9zKSkKIApkaWZm
IC0tZ2l0IGEvYmxvYm1zZy5oIGIvYmxvYm1zZy5oCmluZGV4IDBhZjA4Nzg5MDAwMC4uMDBlMGZk
YzFkNWM2IDEwMDY0NAotLS0gYS9ibG9ibXNnLmgKKysrIGIvYmxvYm1zZy5oCkBAIC0yNjYsNyAr
MjY2LDcgQEAgaW50IGJsb2Jtc2dfcHJpbnRmKHN0cnVjdCBibG9iX2J1ZiAqYnVmLCBjb25zdCBj
aGFyICpuYW1lLCBjb25zdCBjaGFyICpmb3JtYXQsIC4KICNkZWZpbmUgYmxvYm1zZ19mb3JfZWFj
aF9hdHRyKHBvcywgYXR0ciwgcmVtKSBcCiAJZm9yIChyZW0gPSBhdHRyID8gYmxvYm1zZ19kYXRh
X2xlbihhdHRyKSA6IDAsIFwKIAkgICAgIHBvcyA9IChzdHJ1Y3QgYmxvYl9hdHRyICopIChhdHRy
ID8gYmxvYm1zZ19kYXRhKGF0dHIpIDogTlVMTCk7IFwKLQkgICAgIHJlbSA+IDAgJiYgKGJsb2Jf
cGFkX2xlbihwb3MpIDw9IHJlbSkgJiYgXAorCSAgICAgcmVtID49IHNpemVvZihzdHJ1Y3QgYmxv
Yl9hdHRyKSAmJiAoYmxvYl9wYWRfbGVuKHBvcykgPD0gcmVtKSAmJiBcCiAJICAgICAoYmxvYl9w
YWRfbGVuKHBvcykgPj0gc2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpKTsgXAogCSAgICAgcmVtIC09
IGJsb2JfcGFkX2xlbihwb3MpLCBwb3MgPSBibG9iX25leHQocG9zKSkKIAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
