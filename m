Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F54510395F
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X3zGc6MZ1lVFEfOe457etDb0kNsEhNE5Gp7WHOOT74=; b=AOxyUW6bThKM9N
	dRkQENGfkfEI1+5SK2O1bA7Ziw+f4BVWXmw5+9L3yo4FbwEJ1h+nnzRbvYZPuvM2gKJ8kdJQNHCop
	jEtTYvuO27SPI0Gc/y5eKKAupUWhZRNZa2cLNVHf1FhyPeDzkV7zMEkRWMGs3Z+XgXlmRpzQqAsHx
	0IcLKGlawk+6+SdsjhVAuJpSDqpDGuzraQ4NH7fFgfwB1kQtPVtno0iDbAO5cjdUDbMFyuTTRon2b
	TI4nVpSLT2Sb6wAOhV3Xorf2bYYAAjDmT8x0rPSmSzdDy4hwGZVEClZAYS4PK0GmCJ9CI6aZmA+fk
	u4hxUyoI94bapyggQRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOfb-0004Xt-6N; Wed, 20 Nov 2019 12:01:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe6-0001a0-Fc
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EDB414674;
 Wed, 20 Nov 2019 12:59:32 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 4ba09a2c;
 Wed, 20 Nov 2019 12:59:23 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:25 +0100
Message-Id: <20191120115926.23272-9-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035942_703339_2913201C 
X-CRM114-Status: UNSURE (   7.53  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 8/9] blobmsg_json: fix possible
 uninitialized struct member
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

Y2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dpbmc6CgogYmxvYm1zZ19qc29uLmM6Mjg1
OjI6IHdhcm5pbmc6IFRoZSBleHByZXNzaW9uIGlzIGFuIHVuaW5pdGlhbGl6ZWQgdmFsdWUuIFRo
ZSBjb21wdXRlZCB2YWx1ZSB3aWxsIGFsc28gYmUgZ2FyYmFnZQogICAgICAgICBzLT5pbmRlbnRf
bGV2ZWwrKzsKICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4KClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogYmxvYm1zZ19qc29uLmMgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYmxvYm1zZ19qc29uLmMgYi9ibG9ibXNnX2pzb24uYwppbmRleCBhNTk4MGU4YTJiNjIuLjE4
NTkyMTExYjRkZCAxMDA2NDQKLS0tIGEvYmxvYm1zZ19qc29uLmMKKysrIGIvYmxvYm1zZ19qc29u
LmMKQEAgLTMxNSw3ICszMTUsNyBAQCBzdGF0aWMgdm9pZCBzZXR1cF9zdHJidWYoc3RydWN0IHN0
cmJ1ZiAqcywgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYmxvYm1zZ19qc29uXwogCiBjaGFyICpi
bG9ibXNnX2Zvcm1hdF9qc29uX3dpdGhfY2Ioc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgYm9vbCBs
aXN0LCBibG9ibXNnX2pzb25fZm9ybWF0X3QgY2IsIHZvaWQgKnByaXYsIGludCBpbmRlbnQpCiB7
Ci0Jc3RydWN0IHN0cmJ1ZiBzOworCXN0cnVjdCBzdHJidWYgcyA9IHswfTsKIAlib29sIGFycmF5
OwogCWNoYXIgKnJldDsKIApAQCAtMzQ5LDcgKzM0OSw3IEBAIGNoYXIgKmJsb2Jtc2dfZm9ybWF0
X2pzb25fd2l0aF9jYihzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBib29sIGxpc3QsIGJsb2Jtc2df
anNvCiAKIGNoYXIgKmJsb2Jtc2dfZm9ybWF0X2pzb25fdmFsdWVfd2l0aF9jYihzdHJ1Y3QgYmxv
Yl9hdHRyICphdHRyLCBibG9ibXNnX2pzb25fZm9ybWF0X3QgY2IsIHZvaWQgKnByaXYsIGludCBp
bmRlbnQpCiB7Ci0Jc3RydWN0IHN0cmJ1ZiBzOworCXN0cnVjdCBzdHJidWYgcyA9IHswfTsKIAlj
aGFyICpyZXQ7CiAKIAlzZXR1cF9zdHJidWYoJnMsIGF0dHIsIGNiLCBwcml2LCBpbmRlbnQpOwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
