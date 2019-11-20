Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED62B104601
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d78p4AX3E2cQegodzf7wQ55B1bI4EOqTDaAuQlxK1zA=; b=h02zX+zIsJgvZ8
	F/ManMstXqH2DNCCBCEbJqECQR9PTHXvMlQYE/SWJZdSiWVKzGPKp/xnW+pLG4gSt1SfYtV3pA16G
	Al69S1G0yzOAMK7WUIknWA+uRAjZWg3+TNzfdWxPwKYYbqB4XrA+hEZJ4li/EpcxwGyVxT4cfWvgm
	QrbFqp4yY13qSFSGuxbbomc0OHf0ALTGLeAgGq5+Khg8pnQGZqaU8HA5NsRk50nAFJOVPtP2Z1FMX
	3GA3rbYlLBIxiEdhkoXtoywx7ZTHsWJY4S300rvCWtf+PlMGL4N2YyrkRp2gAfR2dlNBXcKiiqPyO
	B+2F5JNJAmDBth2xklVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXnt-00015r-W4; Wed, 20 Nov 2019 21:46:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXle-0005q2-RE
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B7BC34ADF;
 Wed, 20 Nov 2019 22:44:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8a342ee3;
 Wed, 20 Nov 2019 22:43:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:53 +0100
Message-Id: <20191120214353.27652-11-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134407_045538_3B379FBC 
X-CRM114-Status: UNSURE (   7.44  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 10/10] avl: guard against
 theoretical null pointer dereference
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

Y2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dpbmc6CgogYXZsLmM6NjcxOjI1OiB3YXJu
aW5nOiBBY2Nlc3MgdG8gZmllbGQgJ3BhcmVudCcgcmVzdWx0cyBpbiBhIGRlcmVmZXJlbmNlIG9m
IGEgbnVsbCBwb2ludGVyIChsb2FkZWQgZnJvbSBmaWVsZCAncmlnaHQnKQogICAgIG5vZGUtPnJp
Z2h0LT5wYXJlbnQgPSBwYXJlbnQ7CiAgICAgICAgICAgfn5+fn4gICAgICAgICBeCgpXaGljaCBz
ZWVtcyB0byBiZSBpbXBvc3NpYmxlIHRvIHRyaWdnZXIgdmlhIGV4cG9ydGVkIEFWTCBwdWJsaWMg
QVBJLCBidXQKaXQgY291bGQgYmUgcHJvYmFibHkgdHJpZ2VycmVkIGJ5IGZpZGRsaW5nIHdpdGgg
dGhlIEFWTCB0cmVlIG5vZGUgc3RydWN0Cm1lbWJlcnMgbWFudWFsbHkgYXMgdGhleSBhcmUgZXhw
b3NlZC4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQog
YXZsLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXZsLmMgYi9hdmwuYwppbmRleCA4ZDBiZjY1YWFhNWIuLjc5ZWE1Yzc5OGI2NCAxMDA2NDQK
LS0tIGEvYXZsLmMKKysrIGIvYXZsLmMKQEAgLTQ1LDYgKzQ1LDcgQEAKICNpbmNsdWRlIDxzdHJp
bmcuaD4KIAogI2luY2x1ZGUgImF2bC5oIgorI2luY2x1ZGUgImFzc2VydC5oIgogI2luY2x1ZGUg
Imxpc3QuaCIKIAogLyoqCkBAIC02NjgsNiArNjY5LDcgQEAgYXZsX2RlbGV0ZV93b3JrZXIoc3Ry
dWN0IGF2bF90cmVlICp0cmVlLCBzdHJ1Y3QgYXZsX25vZGUgKm5vZGUpCiAgICAgICByZXR1cm47
CiAgICAgfQogCisgICAgYXNzZXJ0KG5vZGUtPnJpZ2h0KTsKICAgICBub2RlLT5yaWdodC0+cGFy
ZW50ID0gcGFyZW50OwogCiAgICAgaWYgKHBhcmVudC0+bGVmdCA9PSBub2RlKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
