Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D513CA06
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 17:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xLut+7XE5zdcTxO4fRNDneLEYGs2xSiAH7syN/ruX/s=; b=E2x/KAveBma6F9
	AsqW4NEdH5b2K79sCOXMssSxNuthbXw2/vzxZo2lknGxjNkRFojDaHXkHcMaXQdmDzLTVjdapXpOU
	tQrXtdFaXoN4qVRFat89XL3oOaQlNBKE0wsJnqMYgVKSRglQU+SqeLS5UeNMqWhkRJ9SKKJzN+CJg
	r4Ip4AsPSo2WJCQCOjXE7HKSFJktMnJOlL+LBPPcBNvu0g9MqTSA5fwxVnU1aFzVESFqQxhzkGV2m
	X846Qn6OusojC0no4sbRdwAjZhz1OPeRkPVWbfrekXNd7cWZ7CnUiW+fE5y/twTDk4j+NB7mEjTXz
	K9bWqud21V7izFpQr/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlvc-0007pS-Lm; Wed, 15 Jan 2020 16:54:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlvT-0007oc-MG
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 16:53:56 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A81B46D1F;
 Wed, 15 Jan 2020 17:53:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2a2795d1;
 Wed, 15 Jan 2020 17:53:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 17:53:44 +0100
Message-Id: <20200115165344.27358-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20200115110333.GA2350@makrotopia.org>
For-Header-Readers: Hi!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_085351_873493_26A0C4AD 
X-CRM114-Status: UNSURE (   8.92  )
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
Subject: [OpenWrt-Devel] [PATCH procd v2] instance: fix pidfile attribute
 double free crash
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
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IGE1YWYzM2NlOWExNiAoImluc3RhbmNlOiBzdHJkdXAgc3RyaW5nIGF0dHJpYnV0ZXMi
KSBoYXMKaW50cm9kdWNlZCBkdXBsaWNhdGlvbiBvZiB2YXJpb3VzIHN0cmluZyBhdHRyaWJ1dGVz
IGluIG9yZGVyIHRvIGZpeAp1c2UtYWZ0ZXItZnJlZSwgYnV0IG1pc3NlZCBoYW5kbGluZyBvZiBg
cGlkZmlsZWAgYW5kIGBzZWNjb21wYCBhdHRyaWJ1dGUKY2FzZXMgaW4gaW5zdGFuY2VfY29uZmln
X21vdmUoKSB3aGVyZSB0aGUgbmV3IHZhbHVlIG9mIGBwaWRmaWxlYCBvcgpgc2VjY29tcGAgaXMg
YmVpbmcgY29waWVkL2Fzc2lnbmVkLiBTb3VyY2Ugb2YgdGhpcyB2YWx1ZXMgaXMgdGhlbgpmcmVl
KClkIGluIHN1YnNlcXVlbnQgY2FsbCB0byBpbnN0YW5jZV9mcmVlKCkgYW5kIHRoZW4gYWdhaW4g
Zm9yIDJuZAp0aW1lIGR1cmluZyB0aGUgc2VydmljZSBzdG9wIGNvbW1hbmQgaGFuZGxpbmcsIGxl
YWRpbmcgdG8gZG91YmxlIGZyZWUKY3Jhc2g6CgogIzAgIHVubWFwX2NodW5rIGF0IHNyYy9tYWxs
b2MvbWFsbG9jLmM6NTE1CiAjMSAgZnJlZSBhdCBzcmMvbWFsbG9jL21hbGxvYy5jOjUyNgogIzIg
IGluc3RhbmNlX2ZyZWUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0YW5jZS5jOjExMDAKICMzICBpbnN0
YW5jZV9kZWxldGUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0YW5jZS5jOjU1OQogIzQgIGluc3RhbmNl
X3N0b3AgKGluPTB4ZDVlMzAwLCBoYWx0PXRydWUpIGF0IGluc3RhbmNlLmM6NjExCgpSZWY6IEZT
IzI3MjMKQ2M6IERhbmllbCBHb2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPgpGaXhlczogYTVh
ZjMzY2U5YTE2ICgiaW5zdGFuY2U6IHN0cmR1cCBzdHJpbmcgYXR0cmlidXRlcyIpClNpZ25lZC1v
ZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQoKIGNoYW5nZXMgc2luY2Ug
djE6CgogICogYWRkZWQgbWlzc2VkIGZpeCBmb3IgYHNlY2NvbXBgIGF0dHJpYnV0ZSAoRGFuaWVs
KQoKIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmljZS9pbnN0
YW5jZS5jIGIvc2VydmljZS9pbnN0YW5jZS5jCmluZGV4IGNlNTIzMzgwN2RiYi4uOGZkNDRhODBk
NmU1IDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmMKKysrIGIvc2VydmljZS9pbnN0YW5j
ZS5jCkBAIC0xMDMxLDE3ICsxMDMxLDIzIEBAIGluc3RhbmNlX2NvbmZpZ19tb3ZlKHN0cnVjdCBz
ZXJ2aWNlX2luc3RhbmNlICppbiwgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluX3NyCiAJYmxv
Ym1zZ19saXN0X21vdmUoJmluLT5qYWlsLm1vdW50LCAmaW5fc3JjLT5qYWlsLm1vdW50KTsKIAlp
bi0+dHJpZ2dlciA9IGluX3NyYy0+dHJpZ2dlcjsKIAlpbi0+Y29tbWFuZCA9IGluX3NyYy0+Y29t
bWFuZDsKLQlpbi0+cGlkZmlsZSA9IGluX3NyYy0+cGlkZmlsZTsKIAlpbi0+cmVzcGF3biA9IGlu
X3NyYy0+cmVzcGF3bjsKIAlpbi0+cmVzcGF3bl9yZXRyeSA9IGluX3NyYy0+cmVzcGF3bl9yZXRy
eTsKIAlpbi0+cmVzcGF3bl90aHJlc2hvbGQgPSBpbl9zcmMtPnJlc3Bhd25fdGhyZXNob2xkOwog
CWluLT5yZXNwYXduX3RpbWVvdXQgPSBpbl9zcmMtPnJlc3Bhd25fdGltZW91dDsKIAlpbi0+bmFt
ZSA9IGluX3NyYy0+bmFtZTsKIAlpbi0+dHJhY2UgPSBpbl9zcmMtPnRyYWNlOwotCWluLT5zZWNj
b21wID0gaW5fc3JjLT5zZWNjb21wOwogCWluLT5ub2RlLmF2bC5rZXkgPSBpbl9zcmMtPm5vZGUu
YXZsLmtleTsKIAlpbi0+c3lzbG9nX2ZhY2lsaXR5ID0gaW5fc3JjLT5zeXNsb2dfZmFjaWxpdHk7
CiAKKwlmcmVlKGluLT5waWRmaWxlKTsKKwlpZiAoaW5fc3JjLT5waWRmaWxlKQorCQlpbi0+cGlk
ZmlsZSA9IHN0cmR1cChpbl9zcmMtPnBpZGZpbGUpOworCisJZnJlZShpbi0+c2VjY29tcCk7CisJ
aWYgKGluX3NyYy0+c2VjY29tcCkKKwkJaW4tPnNlY2NvbXAgPSBzdHJkdXAoaW5fc3JjLT5zZWNj
b21wKTsKKwogCWZyZWUoaW4tPmNvbmZpZyk7CiAJaW4tPmNvbmZpZyA9IGluX3NyYy0+Y29uZmln
OwogCWluX3NyYy0+Y29uZmlnID0gTlVMTDsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
