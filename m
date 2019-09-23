Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF49BAE90
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 09:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i1QbnIqU12Wh784/uY9G4NewyvBBCrPMxo3sSdTtm24=; b=GI7qmAOMxKPBec
	JGQ+Zof8PkDyYZGQcngrQHHKSTEP66YL33GDVneI6RRSHTPoSob4QKML8kBF5dsaB+J09KgzHBKlo
	n/3EiEf3pVanFOh10Pdp1viDmvn8H+Z/6lb0ITxmkyLbXc4d3yBhoKlrJ1FOr50UERO3BZzbFXMBk
	AoujD0SDwl1wonBcZnTv535VQI2dADo/LAjPxuDX+7gRmxQuzKu12Sxlzyr/oxAjvf8xv5Hmxkcwf
	adVHz2RvSSEhsOw+3e+TDaNxX+cwlnhXYDOa7NEkY31SNJdqNT9axLO1qATHUYZ7ut+bNpzKatOoT
	qZkWxuGtjR9kBkK+kb1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIuA-0001ZJ-E3; Mon, 23 Sep 2019 07:37:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIto-0001Yz-V6
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 07:36:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 455F94F04;
 Mon, 23 Sep 2019 09:36:42 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8042f508;
 Mon, 23 Sep 2019 09:36:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 09:35:39 +0200
Message-Id: <20190923073539.7493-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_003645_149885_DC0E9DCA 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: [OpenWrt-Devel] [PATCH] build: fix make kernel_menuconfig
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gYSByZWNlbnQgR2VudG9vIExpbnV4IGluc3RhbGxhdGlvbiwgaW52b2tpbmcgYG1ha2Uga2Vy
bmVsX21lbnVjb25maWdgCmluIHRoZSBidWlsZCBzeXN0ZW0gZmFpbHMsIHdoZXJlYXMgYG1ha2Ug
bWVudWNvbmZpZ2AgaW4gdGhlIGtlcm5lbCB0cmVlCmFsb25lIHdvcmtzIGFzIGV4cGVjdGVkLgoK
VGhpcyBpcyBoYXBwZW5pbmcgYmVjYXVzZSBTVEFHSU5HX1BSRUZJWCBpcyBub3QgZGVmaW5lZCB3
aGVuIGtlcm5lbCdzCm1lbnVjb25maWcgdGFyZ2V0IGNhbGxzIHBrZy1jb25maWcgZnJvbSB0aGUg
dG9vbGNoYWluL2hvc3QgYW5kIHRodXMKcGtnLWNvbmZpZyByZXR1cm5zIGFuIGVtcHR5IHZhbHVl
LCBhbmQgdGhlIGZhbGxiYWNrIHZhbHVlcyBpbiB0aGUga2VybmVsCmNvbmZpZyBzY3JpcHQgYXJl
IGFwcGxpZWQgYnV0IHRob3NlIGFyZSBvZmYgYW5kIHRoZSBsaW5raW5nIGZhaWxzLgoKU29sdXRp
b24gaXMgdG8gdXNlIHN5c3RlbSdzIHBrZy1jb25maWcgZm9yIGtlcm5lbF9tZW51Y29uZmlnIHRh
cmdldCBpbgpvcmRlciB0byBwcm92aWRlIHByb3BlciBjb21waWxlci9saW5rZXIgZmxhZ3MuCgpS
ZWY6IEZTIzI0MjMKQ2M6IFRob21hcyBBbGJlcnMgPHRob21hcy5nYW1laXJvQGdtYWlsLmNvbT4K
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBNYWtlZmls
ZSAgICAgICAgICAgICAgICB8IDEgKwogaW5jbHVkZS90b3BsZXZlbC5tayAgICAgfCA4ICsrKysr
KystCiBzY3JpcHRzL2NvbmZpZy9NYWtlZmlsZSB8IDIgLS0KIDMgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFr
ZWZpbGUKaW5kZXggYWI5N2VhY2M5ZDJiLi42NWVlMTBhODRiOGQgMTAwNjQ0Ci0tLSBhL01ha2Vm
aWxlCisrKyBiL01ha2VmaWxlCkBAIC0xOCw2ICsxOCw3IEBAICQoaWYgJChmaW5kc3RyaW5nICQo
c3BhY2UpLCQoVE9QRElSKSksJChlcnJvciBFUlJPUjogVGhlIHBhdGggdG8gdGhlIE9wZW5XcnQg
ZGlyCiAKIHdvcmxkOgogCitESVNUUk9fUEtHX0NPTkZJRzo9JChzaGVsbCB3aGljaCAtYSBwa2ct
Y29uZmlnIHwgZ3JlcCAtRSAnXC91c3InIHwgaGVhZCAtbiAxKQogZXhwb3J0IFBBVEg6PSQoVE9Q
RElSKS9zdGFnaW5nX2Rpci9ob3N0L2JpbjokKFBBVEgpCiAKIGlmbmVxICgkKE9QRU5XUlRfQlVJ
TEQpLDEpCmRpZmYgLS1naXQgYS9pbmNsdWRlL3RvcGxldmVsLm1rIGIvaW5jbHVkZS90b3BsZXZl
bC5tawppbmRleCAxMzNkYTlkODMwYjUuLjg2ZThhMjY4ZTAyYSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS90b3BsZXZlbC5taworKysgYi9pbmNsdWRlL3RvcGxldmVsLm1rCkBAIC0xMDUsNyArMTA1LDkg
QEAgc2NyaXB0cy9jb25maWcvbWNvbmY6CiAkKGV2YWwgJChjYWxsIHJkZXAsc2NyaXB0cy9jb25m
aWcsc2NyaXB0cy9jb25maWcvbWNvbmYpKQogCiBzY3JpcHRzL2NvbmZpZy9xY29uZjoKLQlAJChf
U0lOR0xFKSQoU1VCTUFLRSkgLXMgLUMgc2NyaXB0cy9jb25maWcgcWNvbmYgQ0M9IiQoSE9TVEND
X1dSQVBQRVIpIgorCUAkKF9TSU5HTEUpJChTVUJNQUtFKSAtcyAtQyBzY3JpcHRzL2NvbmZpZyBx
Y29uZiBcCisJCUNDPSIkKEhPU1RDQ19XUkFQUEVSKSIgXAorCQlESVNUUk8tUEtHLUNPTkZJRz0i
JChESVNUUk9fUEtHX0NPTkZJRykiCiAKIHNjcmlwdHMvY29uZmlnL2NvbmY6CiAJQCQoX1NJTkdM
RSkkKFNVQk1BS0UpIC1zIC1DIHNjcmlwdHMvY29uZmlnIGNvbmYgQ0M9IiQoSE9TVENDX1dSQVBQ
RVIpIgpAQCAtMTU3LDYgKzE1OSwxMCBAQCBlbmRpZgoga2VybmVsX29sZGNvbmZpZzogcHJlcGFy
ZV9rZXJuZWxfY29uZgogCSQoX1NJTkdMRSkkKE5PX1RSQUNFX01BS0UpIC1DIHRhcmdldC9saW51
eCBvbGRjb25maWcKIAoraWZuZXEgKCQoRElTVFJPX1BLR19DT05GSUcpLCkKK2tlcm5lbF9tZW51
Y29uZmlnOiBleHBvcnQgUEFUSDo9JChkaXIgJChESVNUUk9fUEtHX0NPTkZJRykpOiQoUEFUSCkK
K2tlcm5lbF9uY29uZmlnOiBwcmVwYXJlX2tlcm5lbF9jb25mCitlbmRpZgoga2VybmVsX21lbnVj
b25maWc6IHByZXBhcmVfa2VybmVsX2NvbmYKIAkkKF9TSU5HTEUpJChOT19UUkFDRV9NQUtFKSAt
QyB0YXJnZXQvbGludXggbWVudWNvbmZpZwogCmRpZmYgLS1naXQgYS9zY3JpcHRzL2NvbmZpZy9N
YWtlZmlsZSBiL3NjcmlwdHMvY29uZmlnL01ha2VmaWxlCmluZGV4IDhiYjYyZDIzM2M4Ni4uOGI3
OGQ1YTY4MjQ3IDEwMDY0NAotLS0gYS9zY3JpcHRzL2NvbmZpZy9NYWtlZmlsZQorKysgYi9zY3Jp
cHRzL2NvbmZpZy9NYWtlZmlsZQpAQCAtMjAsOCArMjAsNiBAQCBjaGVja19seGRpYWxvZyA9ICQo
c2hlbGwgJChTSEVMTCkgJChDVVJESVIpL2x4ZGlhbG9nL2NoZWNrLWx4ZGlhbG9nLnNoIC0kKDEp
KQogZXhwb3J0IENGTEFHUyArPSAtREtCVUlMRF9OT19OTFMgLUkuICQoY2FsbCBjaGVja19seGRp
YWxvZyxjY2ZsYWdzKQogZXhwb3J0IENYWEZMQUdTICs9IC1ES0JVSUxEX05PX05MUwogCi1ESVNU
Uk8tUEtHLUNPTkZJRyA6PSAkKHNoZWxsIHdoaWNoIC1hIHBrZy1jb25maWcgfCBncmVwIC1FICdc
L3VzcicgfCBoZWFkIC1uIDEpCi0KIGNvbmYtb2Jqcwk6PSBjb25mLm8gemNvbmYudGFiLm8KIG1j
b25mLW9ianMJOj0gbWNvbmYubyB6Y29uZi50YWIubwogcWNvbmYtY3h4b2Jqcwk6PSBxY29uZi5v
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
