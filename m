Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BD4490E5
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiSoEqsFUDukkafPDxVFOG8geFUIglmJqsL/DB+y4rM=; b=Hz2TaCGEIftzZz
	8BrUq93nt5SOW5oaa4wRuYmbTu4+JSDPy+02f2siGDMtfB8e4ZV84c60LX7ef7F30mgQrRb6mh/XH
	UMlxZKxnWJQq/OUC/O+WaV2GIyij5lSx5CdtZwk40ty9mdGPxG1WbGEvJdiOlzqoLCtIRTTywzL/n
	HtU+rEOjnoU8+V3O9ooRIT3EtA3icjJsUZv+VuJYT8G0aqPYJv5YlVpONx2/Ci4Tm7WBDoC7SH3Ly
	y8BrkOWE8/LlKqMeGY0UycXuqL5Qb2XQebqDRw3Mjj5mML/62532znU2U+TyWTbmokUNkPzTR2kWl
	4mZDA89H52ChYFxZbRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxwO-0006Jb-E1; Mon, 17 Jun 2019 20:09:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwB-0006Hg-9t
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 971D24FB6;
 Mon, 17 Jun 2019 22:09:05 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ea7b0587;
 Mon, 17 Jun 2019 22:09:04 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:54 +0200
Message-Id: <1560802136-4157-5-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560802136-4157-1-git-send-email-ynezz@true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130907_509433_F9182926 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: [OpenWrt-Devel] [PATCH 4/6] tools/scons: switch to Python 3
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

QnVpbGQgdGVzdGVkIG9uIGF0aDc5IHdpdGggZm9sbG93aW5nIHBhY2thZ2VzIGZyb20gcGFja2Fn
ZXMgZmVlZCB3aGljaApidWlsZCBkZXBlbmRzIG9uIHNjb25zLiBOb25lIG9mIHRoZW0gYnVpbGQg
YW55bW9yZSBhcyBpdCBzZWVtcywgdGhhdCB0aGUKU0NvbnNjcmlwdHMgYXJlIHdyaXR0ZW4gZm9y
IFB5dGhvbjIuCgogKiBwYWNrYWdlcy9uZXQvaW90aXZpdHkgKEtPLCBkb2Vzbid0IGJ1aWxkIGV2
ZW4gd2l0aCBsYXRlc3QgMS4zLjEgcmVsZWFzZSkKCiAgIFN5bnRheEVycm9yOiBpbnZhbGlkIHN5
bnRheAogICAgRmlsZSAiL29wZW53cnQvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVzbC9p
b3Rpdml0eS0xLjIuMS9idWlsZF9jb21tb24vU0NvbnNjcmlwdCIsIGxpbmUgNDAKICAgICAgcHJp
bnQgIlxuRXJyb3I6IEN1cnJlbnQgc3lzdGVtICglcykgaXNuJ3Qgc3VwcG9ydGVkXG4iICUgaG9z
dAoKICAgTG9va3VwRXJyb3I6IHVua25vd24gZW5jb2Rpbmc6IHN0cmluZ19lc2NhcGU6CiAgICBG
aWxlICIvaG9tZS9wZXRyL3Rlc3Rpbmcvb3BlbndydC9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRr
Y19tdXNsL2lvdGl2aXR5LTEuMy4xL1NDb25zdHJ1Y3QiLCBsaW5lIDI4OgogICAgICBTQ29uc2Ny
aXB0KCdidWlsZF9jb21tb24vU0NvbnNjcmlwdCcpCgogKiBwYWNrYWdlcy9uZXQvc21hcnRzbm1w
ZCAoS08sIHNlZW1zIGRlYWQsIG5vIGNvbW1pdCBzaW5jZSAyMDE1KToKCiAgIFN5bnRheEVycm9y
OiBNaXNzaW5nIHBhcmVudGhlc2VzIGluIGNhbGwgdG8gJ3ByaW50JwogICAgRmlsZSAiL29wZW53
cnQvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVzbC9zbWFydHNubXBkLTIwMTQtMDgtMTMv
U0NvbnN0cnVjdCIsIGxpbmUgMTU2CiAgICAgIHByaW50ICJDYW4ndCBmaW5kIGxpYmx1YSBvciBs
aWJsdWE1LjEhIgoKICogcGFja2FnZXMvdXRpbHMvZ3BzZCAoS08sIGRvZXNuJ3QgYnVpbGQgZXZl
biB3aXRoIGxhdGVzdCAzLjE4LjEgcmVsZWFzZSk6CgogICBBdHRyaWJ1dGVFcnJvcjogJ2xpc3Qn
IG9iamVjdCBoYXMgbm8gYXR0cmlidXRlICdrZXlzJzoKICAgICBGaWxlICIvb3BlbndydC9idWls
ZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2dwc2QtMy4xOC4xL1NDb25zdHJ1Y3QiLCBsaW5l
IDE3NTg6CiAgICAgICBhbGxfbWFucGFnZXMgPSBsaXN0KGJhc2VfbWFucGFnZXMua2V5cygpKSAr
IGxpc3QocHl0aG9uX21hbnBhZ2VzLmtleXMoKSkKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRp
YXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdG9vbHMvc2NvbnMvZmlsZXMvcHl3cmFwLnNoIHwgNiAr
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdG9vbHMvc2NvbnMvZmlsZXMvcHl3cmFwLnNoIGIvdG9vbHMvc2NvbnMvZmls
ZXMvcHl3cmFwLnNoCmluZGV4IGY2MmY1OTBlMGJjZS4uNTM5MTBlOTQ3MjA5IDEwMDc1NQotLS0g
YS90b29scy9zY29ucy9maWxlcy9weXdyYXAuc2gKKysrIGIvdG9vbHMvc2NvbnMvZmlsZXMvcHl3
cmFwLnNoCkBAIC01LDExICs1LDExIEBAIGNhc2UgIiR7MCMjKi99IiBpbgogCSopIGFyZzE9IiQw
LnB5IiA7OwogZXNhYwogCi1mb3IgYmluIGluIHB5dGhvbiBweXRob24yIHB5dGhvbjIuNyBweXRo
b24yLjYgcHl0aG9uMi41IHB5dGhvbjIuNDsgZG8KK2ZvciBiaW4gaW4gcHl0aG9uIHB5dGhvbjM7
IGRvCiAgICAgY2FzZSAiJCgkYmluIC1WIDI+JjEpIiBpbgotICAgICAgICAiUHl0aG9uIDIiKikg
ZXhlYyAkYmluICRhcmcxICIkQCIgOzsKKyAgICAgICAgIlB5dGhvbiAzIiopIGV4ZWMgJGJpbiAk
YXJnMSAiJEAiIDs7CiAgICAgZXNhYwogZG9uZQogCi1lY2hvICJVbmFibGUgdG8gZmluZCBhIFB5
dGhvbiAyLnggaW50ZXJwcmV0ZXIgZm9yIGV4ZWN1dGluZyAke2FyZzE6KyRhcmcxIH0kQCAhIiA+
JjIKK2VjaG8gIlVuYWJsZSB0byBmaW5kIGEgUHl0aG9uIDMueCBpbnRlcnByZXRlciBmb3IgZXhl
Y3V0aW5nICR7YXJnMTorJGFyZzEgfSRAICEiID4mMgogZXhpdCAxCi0tIAoxLjkuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
