Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E361118A828
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5psTOuBl3SaDIwz5XHuU/3zAm475n53IXtmeOHQ3U4=; b=dGURxScLds6HT2
	FUN6IF/EyydFq6sJG1loBQ8N9i3x7TEdTVurT7yuwCcV4hO6lmfNamnjkOMJWNCIhBCgcow9RJ5E1
	OY+xxEKeavdk4kB7UKycamv2+nd5rn4BkX1+3A5IkBg+z1E1Ip5bhLz4jt7WrwyhfZ5H38M3onmBU
	7KqcoR32eZNk4f/Wdo0sHWFQ8mm1ChSxuEwH5J1qtZOIYyzlbSI4jdwKppWNW9WfwxDaKY2guld2R
	60snllLMyfPjzT5Wo0T9glQo7QbWNoeR0ieFkvlj7Y/LkPDdkx9L0g+8Y35CdqGK9EvIw0BbbqW9o
	tngYBaotq6HuSkqEbKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhBY-0000HF-Sc; Wed, 18 Mar 2020 22:29:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA7-0006w3-ON
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 760104C22;
 Wed, 18 Mar 2020 23:27:39 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 521e85dc;
 Wed, 18 Mar 2020 23:27:26 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:12 +0100
Message-Id: <20200318222713.1495-9-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152743_957807_4102ABE1 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 8/9] mac80211: realtek: add staging driver
 for RTL8723BS SDIO module
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

QWRkcyBrZXJuZWwgbW9kdWxlIGZvciBSZWFsdGVrIFJUTDg3MjNCUyBTRElPIFdpcmVsZXNzIExB
TiBOSUMgZHJpdmVyCmF2YWlsYWJsZSBpbiB0aGUgc3RhZ2luZy4KClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9rZXJuZWwvbWFjODAyMTEv
cmVhbHRlay5tayB8IDE5ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwv
bWFjODAyMTEvcmVhbHRlay5tayBiL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL3JlYWx0ZWsubWsK
aW5kZXggNDFmNWUzZTlkYzVmLi5jYzk2ZGY3ZDhiNGYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uva2Vy
bmVsL21hYzgwMjExL3JlYWx0ZWsubWsKKysrIGIvcGFja2FnZS9rZXJuZWwvbWFjODAyMTEvcmVh
bHRlay5tawpAQCAtMSw3ICsxLDcgQEAKIFBLR19EUklWRVJTICs9IFwKIAlydGw4MTgwIHJ0bDgx
ODcgXAogCXJ0bHdpZmkgcnRsd2lmaS1wY2kgcnRsd2lmaS1idGNvZXhpc3QgcnRsd2lmaS11c2Ig
cnRsODE5MmMtY29tbW9uIFwKLQlydGw4MTkyY2UgcnRsODE5MnNlIHJ0bDgxOTJkZSBydGw4MTky
Y3UgcnRsODgyMWFlIFwKKwlydGw4MTkyY2UgcnRsODE5MnNlIHJ0bDgxOTJkZSBydGw4MTkyY3Ug
cnRsODcyM2JzIHJ0bDg4MjFhZSBcCiAJcnRsOHh4eHUgcnR3ODgKIAogY29uZmlnLSQoY2FsbCBj
b25maWdfcGFja2FnZSxydGw4MTgwKSArPSBSVEw4MTgwCkBAIC0yMiw2ICsyMiw5IEBAIGNvbmZp
Zy0kKENPTkZJR19QQUNLQUdFX1JUTFdJRklfREVCVUcpICs9IFJUTFdJRklfREVCVUcKIGNvbmZp
Zy0kKGNhbGwgY29uZmlnX3BhY2thZ2UscnRsOHh4eHUpICs9IFJUTDhYWFhVCiBjb25maWcteSAr
PSBSVEw4WFhYVV9VTlRFU1RFRAogCitjb25maWctJChjYWxsIGNvbmZpZ19wYWNrYWdlLHJ0bDg3
MjNicykgKz0gUlRMODcyM0JTCitjb25maWcteSArPSBTVEFHSU5HCisKIGNvbmZpZy0kKGNhbGwg
Y29uZmlnX3BhY2thZ2UscnR3ODgpICs9IFJUVzg4IFJUVzg4X0NPUkUgUlRXODhfUENJCiBjb25m
aWcteSArPSBSVFc4OF84ODIyQkUgUlRXODhfODgyMkNFCiAKQEAgLTE4MCwzICsxODMsMTcgQEAg
ZGVmaW5lIEtlcm5lbFBhY2thZ2UvcnR3ODgKIAkkKFBLR19CVUlMRF9ESVIpL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL3JlYWx0ZWsvcnR3ODgvcnR3cGNpLmtvCiAgIEFVVE9MT0FEOj0kKGNhbGwgQXV0
b1Byb2JlLHJ0d3BjaSkKIGVuZGVmCisKK2RlZmluZSBLZXJuZWxQYWNrYWdlL3J0bDg3MjNicwor
ICAkKGNhbGwgS2VybmVsUGFja2FnZS9tYWM4MDIxMS9EZWZhdWx0KQorICBUSVRMRTo9UmVhbHRl
ayBSVEw4NzIzQlMgU0RJTyBXaXJlbGVzcyBMQU4gTklDIGRyaXZlciAoc3RhZ2luZykKKyAgREVQ
RU5EUys9ICtrbW9kLW1hYzgwMjExCisgIEZJTEVTOj0kKFBLR19CVUlMRF9ESVIpL2RyaXZlcnMv
c3RhZ2luZy9ydGw4NzIzYnMvcjg3MjNicy5rbworICBBVVRPTE9BRDo9JChjYWxsIEF1dG9Qcm9i
ZSxyODcyM2JzKQorZW5kZWYKKworZGVmaW5lIEtlcm5lbFBhY2thZ2UvcnRsODcyM2JzL2Rlc2Ny
aXB0aW9uCisgVGhpcyBvcHRpb24gZW5hYmxlcyBzdXBwb3J0IGZvciBSVEw4NzIzQlMgU0RJTyBk
cml2ZXJzLCBzdWNoIGFzIHRoZSB3aWZpIGZvdW5kCisgb24gdGhlIDFzdCBnZW4gSW50ZWwgQ29t
cHV0ZSBTdGljaywgdGhlIENISVAgYW5kIG1hbnkgb3RoZXIgSW50ZWwgQXRvbSBhbmQgQVJNCisg
YmFzZWQgZGV2aWNlcy4KK2VuZGVmCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
