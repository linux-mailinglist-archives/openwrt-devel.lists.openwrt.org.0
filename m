Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E330F819D
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 21:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Twg5sY0fnRUL5j7n46da3bWiNxotg8uSVtY7KcK2RFg=; b=mG9vin3pe/Vcwe
	zaFyvL4fjkYPG34v1Mmu8JBN2HyfKr0XUmO5p4qXR/K7JuVt2eJ5G1F7u8NARpTkRxKhQTBKEAzfw
	nmoN5kRJ/IOdFAATWVUnG5R0qvT9ypwZjP8AN4L82f8FxpAFCrZz9wErsnMfFNzynV0qGEYPMrkaD
	klLxmLW2WHXeDPU4WHR+ezVUn0tqdJHFAH0iifhwCJXIx/HYezTQlXK2npn4HNsOD0p6KghEBFmoB
	Sl4wnPaDxgn8aFYcCBsMuBI4afgM1Rx8FE2cpyBK9ayokdT7oufjJIThQKrn7ffIFj/y1XeSKiIrC
	oSkqA1IlM8w6NAnBoj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGkD-000407-Jh; Mon, 11 Nov 2019 20:57:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGk4-0003zi-Il
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 20:56:58 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 298D44F8A;
 Mon, 11 Nov 2019 21:56:53 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8e340783;
 Mon, 11 Nov 2019 21:56:42 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 21:55:58 +0100
Message-Id: <20191111205558.2403-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_125656_771358_5AEE2665 
X-CRM114-Status: UNSURE (   7.87  )
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
Subject: [OpenWrt-Devel] [PATCH] kernel-build: fix kernel_menuconfig
 breakage by forcing YACC
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IDk2NWYzNDFhYTlmZCAoImJ1aWxkOiBmaXggaG9zdCBtZW51IGNvbmZpZyB0YXJnZXRz
IHVzaW5nCm5jdXJzZXMiKSBoYXMgbW92ZWQgaG9zdCdzIHBhdGggd2l0aCBwa2ctY29uZmlnICh1
c3VhbGx5IC91c3IvYmluKSBhdAp0aGUgZmlyc3QgcGxhY2UgaW4gUEFUSCB2YXJpYWJsZSwgd2hp
Y2ggaXMgbm93IGNhdXNpbmcgaXNzdWVzIHdpdGggYmlzb24KYXMgQklTT05fUEtHREFUQURJUiBw
b2ludHMgaW50byBTVEFHSU5HX0RJUl9IT1NULCBidXQgdGhlIGFjdHVhbCBiaXNvbgp1c2VkIGlz
IHRoZSBvbmUgdW5kZXIgaG9zdCBQQVRIICh1c3VhbGx5IC91c3IvYmluL2Jpc29uKSwgbGVhZGlu
ZyB0byB0aGUKZm9sbG93aW5nIHN0cmFuZ2UgZmFpbHVyZXM6CgogJCBtYWtlIHRhcmdldC9saW51
eC9jbGVhbiBrZXJuZWxfbWVudWNvbmZpZyBWPXNjCgogZXhwb3J0IE1BS0VGTEFHUz0gO21ha2Ug
LUMgL3NvbWV3aGVyZS9saW51eC00LjE5LjgxIG1lbnVjb25maWcKIG1ha2UgLWYgLi9zY3JpcHRz
L01ha2VmaWxlLmJ1aWxkIG9iaj1zY3JpcHRzL2tjb25maWcgbWVudWNvbmZpZwogIC4uLgogIGJp
c29uIC1vc2NyaXB0cy9rY29uZmlnL3pjb25mLnRhYi5jIC10IC1sIHNjcmlwdHMva2NvbmZpZy96
Y29uZi55CiAgc3RhZ2luZ19kaXIvaG9zdC9iaW4vbTQ6IGNhbm5vdCBvcGVuIGBzdGFnaW5nX2Rp
ci9ob3N0L3NoYXJlL2Jpc29uL2Jpc29uLm00JzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQog
IHN0YWdpbmdfZGlyL2hvc3QvYmluL200OiBjYW5ub3Qgb3BlbiBgc3RhZ2luZ19kaXIvaG9zdC9z
aGFyZS9iaXNvbi9jLXNrZWwubTQnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5CiAgLi4uCiAg
Z2NjIC1XcCwtTUQsc2NyaXB0cy9rY29uZmlnLy56Y29uZi50YWIuby5kIDwuLi5zbmlwLi4uPiAt
byBzY3JpcHRzL2tjb25maWcvemNvbmYudGFiLm8gc2NyaXB0cy9rY29uZmlnL3pjb25mLnRhYi5j
CiAgZ2NjOiBlcnJvcjogc2NyaXB0cy9rY29uZmlnL3pjb25mLnRhYi5jOiBObyBzdWNoIGZpbGUg
b3IgZGlyZWN0b3J5CiAgZ2NjOiBmYXRhbCBlcnJvcjogbm8gaW5wdXQgZmlsZXMKCkZpeCB0aGlz
IGJ5IGZvcmNpbmcgdXNhZ2Ugb2YgYmlzb24gdW5kZXIgU1RBR0lOR19ESVJfSE9TVC9iaW4gdmlh
IFlBQ0MKbWFrZSB2YXJpYWJsZS4KCkNjOiBUaG9tYXMgQWxiZXJzIDx0aG9tYXMuZ2FtZWlyb0Bn
bWFpbC5jb20+CkNjOiBTdGlqbiBUaW50ZWwgPHN0aWpuQGxpbnV4LWlwdjYuYmU+CkNjOiBFbmVh
cyBVIGRlIFF1ZWlyb3ogPGNvdGVxdWVpcm96QGdtYWlsLmNvbT4KUmVmOiBodHRwczovL2ZvcnVt
Lm9wZW53cnQub3JnL3QvYnBpLXI2NC1rZXJuZWwtNC0xOS1rZXJuZWwtbWVudWNvbmZpZy1lcnJv
cgpGaXhlczogOTY1ZjM0MWFhOWZkICgiYnVpbGQ6IGZpeCBob3N0IG1lbnUgY29uZmlnIHRhcmdl
dHMgdXNpbmcgbmN1cnNlcyIpClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogaW5jbHVkZS9rZXJuZWwtYnVpbGQubWsgfCAxICsKIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUva2VybmVsLWJ1aWxkLm1rIGIv
aW5jbHVkZS9rZXJuZWwtYnVpbGQubWsKaW5kZXggM2ZkZjdlZmM1Mjg1Li42ODRmYmQzNGQzYzAg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUva2VybmVsLWJ1aWxkLm1rCisrKyBiL2luY2x1ZGUva2VybmVs
LWJ1aWxkLm1rCkBAIC0xNjMsNiArMTYzLDcgQEAgZGVmaW5lIEJ1aWxkS2VybmVsCiAJJChMSU5V
WF9SRUNPTkZfQ01EKSA+ICQoTElOVVhfRElSKS8uY29uZmlnCiAJJChfU0lOR0xFKSQoS0VSTkVM
X01BS0UpIFwKIAkJJChpZiAkKGZpbmRzdHJpbmcgRGFyd2luLCQoSE9TVF9PUykpLEhPU1RfTE9B
RExJQkVTPSItTCQoU1RBR0lOR19ESVJfSE9TVCkvbGliIC1sbmN1cnNlcyIpIFwKKwkJWUFDQz0k
KFNUQUdJTkdfRElSX0hPU1QpL2Jpbi9iaXNvbiBcCiAJCSQkQAogCSQoTElOVVhfUkVDT05GX0RJ
RkYpICQoTElOVVhfRElSKS8uY29uZmlnID4gJChMSU5VWF9SRUNPTkZJR19UQVJHRVQpCiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
