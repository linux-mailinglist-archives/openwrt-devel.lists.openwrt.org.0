Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6C8EF21A
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F45AM+gDPAUKSQTIecmY4WNVifs8rEFnX+um8wLErWM=; b=fTDdtoUpkYug1D
	B8xJR1Em8bcdJGwudoP0oSisjmmWNpLLZWUjPJQlt355unL42fu4BlJAy/IlKPS6WXeCQdugVYWIj
	m7TQMYRrYQML1w4sW3NVnRAq2bsTGWgC15w8wiynQ4Fodp3OEH7Of5m3vS6IH1B87JALyZjLjzbcL
	vQrXPDqKS9DQEVM+zniHBqKN/hQGVow8yWuLiwxYGTHrDf2wmf3F+xilY6gWxPD4xFYrQdlShd51T
	jupgxkBp69DDOsYnHW9YvV3RBWzCoQWHAjXf5a4YuAY4FcID3BWZBUxt7nMqXRlKU6LJfmAUW3Z0E
	+IF9Ii1aLwz3xoS2SNiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmse-0002Rt-M1; Tue, 05 Nov 2019 00:39:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqS-0008Al-2T
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2CD024D8D;
 Tue,  5 Nov 2019 01:37:14 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b479ceba;
 Tue, 5 Nov 2019 01:37:04 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:56 +0100
Message-Id: <20191105003657.16540-18-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163716_278785_322353FC 
X-CRM114-Status: UNSURE (   8.59  )
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
Subject: [OpenWrt-Devel] [PATCH uci 17/18] ucimap: fix possible use of
 memory after it is freed
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlOgoKIHVjaW1hcC5jOjcxMDo4OiB3YXJuaW5nOiBVc2Ugb2YgbWVtb3J5IGFmdGVyIGl0IGlz
IGZyZWVkCiAgICAgICAgZXJyID0gdWNpbWFwX3BhcnNlX29wdGlvbnMobWFwLCBzbSwgc2QsIHMp
OwogICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKU2ln
bmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB1Y2ltYXAuYyB8
IDE1ICsrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdWNpbWFwLmMgYi91Y2ltYXAuYwppbmRleCBkNWZk
NWM0ZjcxNDMuLjdjMmIwNDM1ZDMwOCAxMDA2NDQKLS0tIGEvdWNpbWFwLmMKKysrIGIvdWNpbWFw
LmMKQEAgLTQ5MCwxNiArNDkwLDIxIEBAIHVjaW1hcF9hZGRfc2VjdGlvbl9saXN0KHN0cnVjdCB1
Y2lfbWFwICptYXAsIHN0cnVjdCB1Y2ltYXBfc2VjdGlvbl9kYXRhICpzZCkKIAltYXAtPnNkYXRh
X3RhaWwgPSAmc2QtPm5leHQ7CiB9CiAKLXN0YXRpYyB2b2lkCitzdGF0aWMgaW50CiB1Y2ltYXBf
YWRkX3NlY3Rpb24oc3RydWN0IHVjaW1hcF9zZWN0aW9uX2RhdGEgKnNkKQogeworCWludCByOwog
CXN0cnVjdCB1Y2lfbWFwICptYXAgPSBzZC0+bWFwOwogCiAJc2QtPm5leHQgPSBOVUxMOwotCWlm
IChzZC0+c20tPmFkZChtYXAsIHVjaW1hcF9zZWN0aW9uX3B0cihzZCkpIDwgMCkKKwlyID0gc2Qt
PnNtLT5hZGQobWFwLCB1Y2ltYXBfc2VjdGlvbl9wdHIoc2QpKTsKKwlpZiAociA8IDApIHsKIAkJ
dWNpbWFwX2ZyZWVfc2VjdGlvbihtYXAsIHNkKTsKLQllbHNlCisJCXJldHVybiByOworCX0gZWxz
ZQogCQl1Y2ltYXBfYWRkX3NlY3Rpb25fbGlzdChtYXAsIHNkKTsKKworCXJldHVybiAwOwogfQog
CiAjaWZkZWYgVUNJX0RFQlVHCkBAIC03MDIsNyArNzA3LDkgQEAgdWNpbWFwX3BhcnNlX3NlY3Rp
b24oc3RydWN0IHVjaV9tYXAgKm1hcCwgc3RydWN0IHVjaV9zZWN0aW9ubWFwICpzbSwgc3RydWN0
IHVjaW0KIAkJZ290byBlcnJvcjsKIAogCWlmIChtYXAtPnBhcnNlZCkgewotCQl1Y2ltYXBfYWRk
X3NlY3Rpb24oc2QpOworCQllcnIgPSB1Y2ltYXBfYWRkX3NlY3Rpb24oc2QpOworCQlpZiAoZXJy
KQorCQkJcmV0dXJuIGVycjsKIAl9IGVsc2UgewogCQl1Y2ltYXBfYWRkX3NlY3Rpb25fbGlzdCht
YXAsIHNkKTsKIAl9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
