Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E73012F258
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 01:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Tuje5wEeXEP1QwhzdmtO4fWDRuFVHB/Bwcn31MKT9E=; b=dm/fKqDXavfCEW
	UTRTQhE1RJEn0hHfYCJspPzopt37cHkysA9QGg8q+nrf4YK9rE1nuzSuL+HUoqaTEn2myaapZ8ojB
	5WcRbQKlIlsM9L7luxqgyBetKPAdmjOjaP3XhB8y3mur5jA6oxDmbhMEzGRgwWWilxxk6QGNRkDWt
	KH4jq7NHFfPuvq4i/vI/5QQw5//A8wRook9S2GpyQuvLrXOBkRSoTbjkdDr9nk9BLoq+SpqewEjNY
	N6UHEj3rd80R2rHg2CFwvqYu1T2lsU/fM9ZVfh4Fnfp/riRLHFe9sit+EkvA15F6GLiO7XciSl/3v
	abHAeCrX7jsimgIIauYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inB77-0008Eo-KQ; Fri, 03 Jan 2020 00:46:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inB70-0008D1-Mm
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 00:46:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 60EFD36CB;
 Fri,  3 Jan 2020 01:46:42 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e4bf72d6;
 Fri, 3 Jan 2020 01:46:31 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 01:46:34 +0100
Message-Id: <20200103004638.16307-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_164646_914619_BE7654A4 
X-CRM114-Status: UNSURE (   6.76  )
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
Subject: [OpenWrt-Devel] [PATCH procd 0/4] fixes and improvements
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

SGksCgp0aGlzIHNlcmllcyBmaXhlcyBvdXQgb2YgdHJlZSBidWlsZCwgZmFpbGluZyBpbWFnZSB2
YWxpZGF0aW9uIGF0IGxlYXN0IG9uClJQaS00IGFuZCByZXdvcmtzIHRoZSBmaXJtd2FyZSB2YWxp
ZGF0aW9uIGluIG9yZGVyIHRvIGZpeCBmb2xsb3dpbmcKZGVmaWNpZW5jaWVzOgoKICogdW5oYW5k
bGVkIHJlYWQoKSBlcnJvcnMKICogZXZlcnl0aGluZyBidW5kbGVkIGluIG9uZSBsb25nIGZ1bmN0
aW9uLCB3aGljaCBpcyBoYXJkIHRvIGZvbGxvdyBhbmQKICAgcmVhc29uIGFib3V0CiAqIEpTT04g
cGFyc2VyIGVycm9ycyBhcmUgYmVpbmcgaWdub3JlZCwgYW55dGhpbmcgZWxzZSB0aGVuCiAgIGpz
b25fdG9rZW5lcl9jb250aW51ZSBpcyBmYXRhbCBlcnJvcgogKiBKU09OIHBhcnNlciBlcnJvcnMg
YXJlIGJlaW5nIG91dHB1dCB0byBzdGRlcnIsIHRodXMgaW52aXNpYmxlIHZpYSBTU0gKICogdmFs
aWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbCBjYW4gZmFpbCBhdCBhIGxvdCBvZiBwbGFjZXMsIGJ1
dCB3ZSBqdXN0CiAgIGdldCBvbmUgZ2VuZXJpYyAiRmlybXdhcmUgaW1hZ2UgY291bGRuJ3QgYmUg
dmFsaWRhdGVkIiBzbyBpdCdzIGhhcmQKICAgdG8gZGVidWcKClBldHIgxaB0ZXRpYXIgKDQpOgog
IGNtYWtlOiBmaXggbG9va3VwIG9mIGV4dGVybmFsIGxpYnJhcmllcwogIHN5c3RlbTogZml4IGZh
aWxpbmcgaW1hZ2UgdmFsaWRhdGlvbiBkdWUgdG8gRUlOVFIKICBzeXN0ZW06IHN5c3VwZ3JhZGU6
IHJld29yayBmaXJtd2FyZSB2YWxpZGF0aW9uCiAgc3lzdGVtOiBzeXN1cGdyYWRlOiBmaXggcG9z
c2libHkgbWlzbGVhZGluZyBlcnJvcgoKIENNYWtlTGlzdHMudHh0ICAgICAgICAgIHwgIDE0ICsr
Ky0KIHN5c3RlbS5jICAgICAgICAgICAgICAgIHwgMTczICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0KIHVwZ3JhZGVkL0NNYWtlTGlzdHMudHh0IHwgICAyICstCiAzIGZp
bGVzIGNoYW5nZWQsIDE0MCBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
