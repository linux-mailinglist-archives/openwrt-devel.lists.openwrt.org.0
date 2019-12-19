Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D416C127064
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBDAGnF6nEOO+QShA8fGqqZwvh75Ingpvbz6ItANVpk=; b=OvW3KygHrv+P/E
	J16xxMy9rr3ZQmeHxmeZ92i4Te4gj014loaYMj+F4Uqg2aJY7GGT+cwl2UAj5ZdI99nP5u5Hk7xNs
	iC0RsOt7st9G25eWI9qKWqoXSBkgZt/1coAegyryZPO7MK5VO5SWzRms3u/IxID3eL/i7RSBg1gbL
	1t6B87KHNR/EnM/QNMDl3TOAX5stAvNRSkMb5rGWmsgylOkxdTwJWGyWGcIuriKo2BVa/h7+5jz94
	bBjzweMy00+CjWxPk4BtBfN3qIld53yg7pRQq+5feZt3/040lDn/Qnfw0nSd58Osbmu8rSuNBgbeS
	QXDVu+m8+O7HQRAlOQ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3wz-0001QK-E8; Thu, 19 Dec 2019 22:07:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uO-0003ms-9Z
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6BFF24B99;
 Thu, 19 Dec 2019 23:04:31 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id cefa8409;
 Thu, 19 Dec 2019 23:04:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:21 +0100
Message-Id: <20191219220421.22206-10-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140436_529858_33EF8870 
X-CRM114-Status: UNSURE (   9.54  )
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
Subject: [OpenWrt-Devel] [PATCH ucert 9/9] fix certificate blob parsing
 vulnerability by using blob_parse_untrusted
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

YmxvYl9wYXJzZSBleHBlY3RzIGJsb2JzIGZyb20gdHJ1c3RlZCBpbnB1dHMsIGJ1dCBpbiB0aGlz
IGNhc2UgaXQgY2FuIGJlCnN1cHBsaWVkIHdpdGggcG9zc2libHkgbWFsaWNpb3VzIGNlcnRpZmlj
YXRlcyBmcm9tIHVudHJ1c3RlZCBpbnB1dHMgYXMKd2VsbCwgc28gaW4gb3JkZXIgdG8gcHJldmVu
dCBzdWNoIGNvbmRpdGlvbnMsIHN3aXRjaCB0bwpibG9iX3BhcnNlX3VudHJ1c3RlZCB3aGljaCBz
aG91bGQgaG9wZWZ1bGx5IGhhbmRsZSBzdWNoIGlucHV0cwphcHByb3ByaWF0ZWx5LgoKU2lnbmVk
LW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB1Y2VydC5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvdWNlcnQuYyBiL3VjZXJ0LmMKaW5kZXggNzY5NjBhMjAwYmUwLi5kODIyMTk5ZWI3Zjgg
MTAwNjQ0Ci0tLSBhL3VjZXJ0LmMKKysrIGIvdWNlcnQuYwpAQCAtMTU0LDcgKzE1NCw3IEBAIHN0
YXRpYyBpbnQgY2VydF9sb2FkKGNvbnN0IGNoYXIgKmNlcnRmaWxlLCBzdHJ1Y3QgbGlzdF9oZWFk
ICpjaGFpbikgewogCiAJYnVmcHQgPSAoc3RydWN0IGJsb2JfYXR0ciAqKWZpbGVidWY7CiAJZG8g
ewotCQlwcmV0ID0gYmxvYl9wYXJzZShidWZwdCwgY2VydHRiLCBjZXJ0X3BvbGljeSwgQ0VSVF9B
VFRSX01BWCk7CisJCXByZXQgPSBibG9iX3BhcnNlX3VudHJ1c3RlZChidWZwdCwgbGVuLCBjZXJ0
dGIsIGNlcnRfcG9saWN5LCBDRVJUX0FUVFJfTUFYKTsKIAkJaWYgKHByZXQgPD0gMCkKIAkJCS8q
IG5vIGF0dHJpYnV0ZXMgZm91bmQgKi8KIAkJCWJyZWFrOwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
