Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1572A12BEB7
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 20:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IgvPXooDhDoRie7P85W5DR6oYW+frp9nd07JXsnwZQ=; b=QuEtu17HbiUVPZ
	fpcv202gW7utscnu1Z6VgZJmHisgvcqySmxhb6SLnQfhYm3oqnJeYMb/bZ9USIkObWVIjm9Eqv5gr
	FMY4mo8tlhadSEkhxYFKlwn60qiGjQRtMcc33a9cn7ZCpe9B9hX8+/0GRHCsOIixdeQF0nIsDChcr
	o4xsRGfrvYeZ3Yyg85AOE40jHzqpeeDiImGMJ8WGKuCuAQWvgGN3xKVGoNpMfO7k8GR8mDNnGxJSP
	N7uCMQHI5j0WEXIDN72HMS0soO1Km486oNpB1zaJeNO/cxcQIaldp+YpB2adKv1KLEQ5J1Dw+dc79
	iVeDJfvvkmMUpC8IpF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilHqq-0001Rj-27; Sat, 28 Dec 2019 19:34:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilHqj-0001Qv-EQ
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 19:34:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id d73so10885654wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 11:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AWc75EJMAkKPd66arLPoQxpb03akl9LsfN5OR5Qa3cA=;
 b=KhF6zN/BIXEEcsbABlrPOuDN/QvEh/mcAx96yLAXOKrf77Z3ha138/sNIvr6/UAHiT
 qPGRN9bv2UosxwoE0LUMslUQ2lllGXHIrGBrouhmKOjjZ7abX8J3wOm2pguvMVsBXAjK
 SbYfF4D98lyUeVhzjPleU7dFwSeccfnQ90B6nYl3Rox3liemSPpTYtF6wv4Y37WEApr8
 e1vvS6beYIhihcQyofXLFtF1nlF9lTMdgKqe/e6n2PQ4uihKpyNp3pV1fPIahaNGN8+b
 lLBygol1hNl77iuWXhbBFAReU4tSZgs7L+rPBA669oaJz2gjKNvuxH9UlVTRQo19NHR9
 GCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AWc75EJMAkKPd66arLPoQxpb03akl9LsfN5OR5Qa3cA=;
 b=A5qVIMAQ0Macm4vC1i3ZGmsF9SeGwHJ1Pk596Ie9YGx8mWRkJoy+HJlk7vFhJxeNQ4
 udzECm3hk/J96ZJKSOJA2Wv0zEwEWXgeQopHxehNxTYyxsPOeIWdFUg3WliahkxuzVEz
 PiXWeSUCLYNnj/Ul5qT440dweEQeDedkbp7Qbw2umcE4VQBlw8YgAtviHqKNRiivIZ++
 wT07f5iZE5NN5U3mIWKW9LPybsVa4CmSeFJoKsfop36fYbwMX1O0hBGhHdo2OidKjnb3
 zdlX4NO1cgn3YYVhpiatf4bl5ZlDS42h3P4xcU27I0kC1OaDuQ3+EglzfDbjEnDQVovx
 3uNA==
X-Gm-Message-State: APjAAAWRWbl+EATlUeCZUBxN2xR8Ne5mxQ6iYXXYGN+QPOP2cnkzfyLI
 f4K+FfNZQ+4ENl1f1vtbo/G8yJ2eMSOi5f/MUN1jNbOYDBhYn51JI0Gefgx9jSTv1NuUKLUAugJ
 RgVy8iQKy9KqI4v2duQHx9Ax5F+K5MKqZ4kBvFhybRF6wQh5Cb8KHeAysy4RjsAtF6b1f8dyMq7
 iL1rsH0T9P
X-Google-Smtp-Source: APXvYqyCMt4dby1YY9e5bFCVec0M8UFmMzFEvziUmJpKs1s6vR/hF6bBvV+F5TW56JdIbZss6AHS6Q==
X-Received: by 2002:a1c:6404:: with SMTP id y4mr25671724wmb.143.1577561646927; 
 Sat, 28 Dec 2019 11:34:06 -0800 (PST)
Received: from localhost.localdomain (185-18-60-243.cgn.optinet.hr.
 [185.18.60.243])
 by smtp.googlemail.com with ESMTPSA id u7sm15206186wmj.3.2019.12.28.11.34.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 11:34:06 -0800 (PST)
From: =?UTF-8?q?Luka=20Ko=C5=BEnjak?= <luka.koznjak@sartura.hr>
To: openwrt-devel@lists.openwrt.org,
	luka.koznjak@sartura.hr
Date: Sat, 28 Dec 2019 20:30:53 +0100
Message-Id: <20191228193053.1112349-1-luka.koznjak@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_113409_533810_61E6E755 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] file: fix segfault in uci_parse_option
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
Cc: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>,
 Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4IGEgc2VnbWVudGF0aW9uIGZhdWx0IGNhdXNlZCBieSB1c2luZyBhIHBvaW50ZXIgdG8gYSBy
ZWFsbG9jYXRlZAphZGRyZXNzLiBUaGUgbmFtZSBwb2ludGVyIGluIHRoZSB1Y2lfcGFyc2Vfb3B0
aW9uIGZ1bmN0aW9uCmJlY29tZXMgaW52YWxpZCBpZiBhc3NlcnRfZW9sIGNhbGxzIHVjaV9yZWFs
bG9jIGRvd24gdGhlIGxpbmUsCnJlc3VsdGluZyBpbiBhIHNlZ21lbnRhdGlvbiBmYXVsdCB3aGVu
IGF0dGVtcHRpbmcgdG8gZGVyZWZlcmVuY2UKbmFtZSBpbiBhIHN0cmNtcCBjaGVjayBpbiB1Y2lf
bG9va3VwX2xpc3QuIEEgc2ltcGxlIGZpeCBpcwp0byBjYWxsIGFzc2VydF9lb2wgYmVmb3JlIHJl
dHJpZXZpbmcgdGhlIGFjdHVhbCBhZGRyZXNzIGZvcgp0aGUgbmFtZSBhbmQgdHlwZSBwb2ludGVy
cy4KClRoZSBzZWdtZW50YXRpb24gZmF1bHQgaGFzIGJlZW4gZm91bmQgd2hpbGUgZnV6emluZyB0
aGUKdWNpIGNvbmZpZ3VyYXRpb24gc3lzdGVtIGZvciB2YXJpb3VzIHR5cGVzIG9mIGRpZmZlcmVu
dCBjcmFzaGVzCmFuZCB1bmRlZmluZWQgYmVoYXZpb3JzLCB3aGljaCByZXN1bHRlZCBpbiBtdWx0
aXBsZSBkaWZmZXJlbnQKaW1wb3J0IGZpbGVzIGNhdXNpbmcgaW5zdGFiaWxpdHkgYW5kIHNlZ21l
bnRhdGlvbiBmYXVsdHMuCgpTaWduZWQtb2ZmLWJ5OiBMdWthIEtvxb5uamFrIDxsdWthLmtvem5q
YWtAc2FydHVyYS5ocj4KU2lnbmVkLW9mZi1ieTogSnVyYWogVmlqdGl1ayA8anVyYWoudmlqdGl1
a0BzYXJ0dXJhLmhyPgpDQzogTHVrYSBQZXJrb3YgPGx1a2EucGVya292QHNhcnR1cmEuaHI+Ci0t
LQogZmlsZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZmlsZS5jIGIvZmlsZS5jCmluZGV4IDNjZDc3MDIuLjNhYzQ5
YzYgMTAwNjQ0Ci0tLSBhL2ZpbGUuYworKysgYi9maWxlLmMKQEAgLTQ3MSw5ICs0NzEsOSBAQCBz
dGF0aWMgdm9pZCB1Y2lfcGFyc2Vfb3B0aW9uKHN0cnVjdCB1Y2lfY29udGV4dCAqY3R4LCBib29s
IGxpc3QpCiAKIAlvZnNfbmFtZSA9IG5leHRfYXJnKGN0eCwgdHJ1ZSwgdHJ1ZSwgZmFsc2UpOwog
CW9mc192YWx1ZSA9IG5leHRfYXJnKGN0eCwgZmFsc2UsIGZhbHNlLCBmYWxzZSk7CisJYXNzZXJ0
X2VvbChjdHgpOwogCW5hbWUgPSBwY3R4X3N0cihwY3R4LCBvZnNfbmFtZSk7CiAJdmFsdWUgPSBw
Y3R4X3N0cihwY3R4LCBvZnNfdmFsdWUpOwotCWFzc2VydF9lb2woY3R4KTsKIAogCXVjaV9maWxs
X3B0cihjdHgsICZwdHIsICZwY3R4LT5zZWN0aW9uLT5lKTsKIAllID0gdWNpX2xvb2t1cF9saXN0
KCZwY3R4LT5zZWN0aW9uLT5vcHRpb25zLCBuYW1lKTsKLS0gCjIuMjQuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
