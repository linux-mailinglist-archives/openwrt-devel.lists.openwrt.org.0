Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC90510395C
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGnRyZcFoi5eVmXXWAecGCDC/WdCt0GwfZy8FZRg8Xo=; b=sNFUE9k9rx6JDr
	RXMxKBRD/J5JUXoy+Q95VqudMuT6qGDA5Z8FJtVmojpMGvm1v81LPh7ieys6pXaGDekke7GuoJ3P2
	NOn2KiZXYXmFsdc8FD1yQ0l7GP2lN/Uiw01OxzeBGniSzlzBEYigurXDv6QWQ1lxH15745R3SGxkj
	s6w7psVwfOMK4F2e0kg/otpfPNS/oCwALTX/9lRU8Tz+woiazr8THWKi//ZxQTq+awGZsceVruJF4
	P23bE0I+ZEA9GwbBptjHr/1lLTAx5V200Ps+ZuLNV0clEafaXlTBwAY4bWXBQiv/AofTkJLrjjtEK
	XpGJWZvBhmgtjnLSTvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOfK-0004Fc-Nq; Wed, 20 Nov 2019 12:00:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe5-0001Zb-BT
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 71AD54670;
 Wed, 20 Nov 2019 12:59:32 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 73f18cbf;
 Wed, 20 Nov 2019 12:59:22 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:23 +0100
Message-Id: <20191120115926.23272-7-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035941_560517_CAD9FBD8 
X-CRM114-Status: UNSURE (   7.33  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 6/9] jshn: main: fix leak of memory
 pointed to by 'vars'
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

Rml4ZXMgZm9sbG93aW5nIGxlYWsgb2YgbWVtb3J5OgoKIDYsMDE2IGJ5dGVzIGluIDEgYmxvY2tz
IGFyZSBwb3NzaWJseSBsb3N0IGluIGxvc3MgcmVjb3JkIDEgb2YgMQogICAgYXQgMHg0QzMxQjI1
OiBjYWxsb2MKICAgIGJ5IDB4MTA5OEY4OiBtYWluIChqc2huLmM6MzUzKQoKU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBqc2huLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2pzaG4uYyBiL2pzaG4uYwpp
bmRleCAwYWExMjBjOTI1ZGQuLjAyYjM1Mjg2ZWE4YiAxMDA2NDQKLS0tIGEvanNobi5jCisrKyBi
L2pzaG4uYwpAQCAtMzY2LDYgKzM2Niw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJn
dikKIAkJdmFyc1tpXS52YWwgPSBjICsgMTsKIAkJYXZsX2luc2VydCgmZW52X3ZhcnMsICZ2YXJz
W2ldLmF2bCk7CiAJfQorCWZyZWUodmFycyk7CiAKIAl3aGlsZSAoKGNoID0gZ2V0b3B0KGFyZ2Ms
IGFyZ3YsICJwOm5pcjpSOm86dyIpKSAhPSAtMSkgewogCQlzd2l0Y2goY2gpIHsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
