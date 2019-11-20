Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9899103960
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UKKaan/jT+1vnI3IYqeVGxUMSIcKgX+AE/1aorgE2E=; b=nQvUb3uHsDEMLN
	J+DnpZxB83bCfVmTm9nS3wXUOW/iw2yxQvoADJFjlc8gfdCfugTcMqsmAL9+k3bnwKE8ob8+oOZt3
	Klt8Lo/hWMf8JzGAeOxoxtCzT+R9LOvzLk5sTkmv2d52v4lj9gdWShcRRigd3z+Z5Wyntm3TtEn0P
	2+IJhjFpbDxbEMvsIlxYLd6IytYCV3P/1cKsA1ImP2aGwz5WEY6V9XnnGlWweEcLBu/QGm14MWrLC
	iAUuhe/5P3J7wt1/K6Gl9qaqoXEXIJ86yHFFd4WGIPlcGA+FRA/nUOvoAJxcmUkFSQLCHV8Nvd6DQ
	DTg0MNj+0/ma9cQHT5Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOfn-0004oW-PO; Wed, 20 Nov 2019 12:01:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe6-0001aG-Jx
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 26EFD4675;
 Wed, 20 Nov 2019 12:59:33 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 801c8905;
 Wed, 20 Nov 2019 12:59:23 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:26 +0100
Message-Id: <20191120115926.23272-10-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035942_812313_E832675C 
X-CRM114-Status: UNSURE (   8.88  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against theoretical
 null pointer dereference
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
YXZsLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2F2bC5jIGIvYXZsLmMKaW5kZXggOGQwYmY2NWFhYTViLi5lNTU4
NDA1MWFiOTQgMTAwNjQ0Ci0tLSBhL2F2bC5jCisrKyBiL2F2bC5jCkBAIC02NjgsNyArNjY4LDgg
QEAgYXZsX2RlbGV0ZV93b3JrZXIoc3RydWN0IGF2bF90cmVlICp0cmVlLCBzdHJ1Y3QgYXZsX25v
ZGUgKm5vZGUpCiAgICAgICByZXR1cm47CiAgICAgfQogCi0gICAgbm9kZS0+cmlnaHQtPnBhcmVu
dCA9IHBhcmVudDsKKyAgICBpZiAobm9kZS0+cmlnaHQpCisgICAgICBub2RlLT5yaWdodC0+cGFy
ZW50ID0gcGFyZW50OwogCiAgICAgaWYgKHBhcmVudC0+bGVmdCA9PSBub2RlKQogICAgICAgcGFy
ZW50LT5sZWZ0ID0gbm9kZS0+cmlnaHQ7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
