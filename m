Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3208DBAE94
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 09:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hAjDn8CjA34aYXyJkBDZqiOZ3z/qPfN0KnonBOBMx00=; b=TWlHnpxlDIGeYu
	ZphJ9ppBUFj2sdN2zTgQel9zqzqumWfrYAbcoFdABAPSjJxf/F/ItYkVh0oArre1irTphzGd5YDv6
	RQXP8YWKGYuKICziVkp53jtuF0j+5p5ZOCHlfbiuG80SMq4sKgChrzcwlUvkK0eCD+uxM1YV9fGpx
	/e0uKPDteJ18mjFjXo+qx/ClYwC/Ft5APAvN1BzmLD/EY0DUw0+Z45p8fhTbxHi43lela1utYp40E
	qo2cyiar4m5rQwagqqoshMIcs6W3Aw+rtNHfvwClvHWzN6Z6kJ7K+p5M1Un811TG9L3nxzVlGMcdp
	brE6ZqUJou/fhaxrtuIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIwt-0001ry-0i; Mon, 23 Sep 2019 07:39:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIwh-0001rd-AE
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 07:39:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C9F6A4F13;
 Mon, 23 Sep 2019 09:39:41 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5e965fee;
 Mon, 23 Sep 2019 09:39:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 09:39:37 +0200
Message-Id: <20190923073937.7890-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20190923073539.7493-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_003943_508208_72640A44 
X-CRM114-Status: UNSURE (   7.95  )
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
Subject: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCgpjaGFuZ2Vz
IGluIHYyOgoKICogZml4ZWQga2VybmVsX25jb25maWcgcGF0aAoKIE1ha2VmaWxlICAgICAgICAg
ICAgICAgIHwgMSArCiBpbmNsdWRlL3RvcGxldmVsLm1rICAgICB8IDggKysrKysrKy0KIHNjcmlw
dHMvY29uZmlnL01ha2VmaWxlIHwgMiAtLQogMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQppbmRl
eCBhYjk3ZWFjYzlkMmIuLjY1ZWUxMGE4NGI4ZCAxMDA2NDQKLS0tIGEvTWFrZWZpbGUKKysrIGIv
TWFrZWZpbGUKQEAgLTE4LDYgKzE4LDcgQEAgJChpZiAkKGZpbmRzdHJpbmcgJChzcGFjZSksJChU
T1BESVIpKSwkKGVycm9yIEVSUk9SOiBUaGUgcGF0aCB0byB0aGUgT3BlbldydCBkaXIKIAogd29y
bGQ6CiAKK0RJU1RST19QS0dfQ09ORklHOj0kKHNoZWxsIHdoaWNoIC1hIHBrZy1jb25maWcgfCBn
cmVwIC1FICdcL3VzcicgfCBoZWFkIC1uIDEpCiBleHBvcnQgUEFUSDo9JChUT1BESVIpL3N0YWdp
bmdfZGlyL2hvc3QvYmluOiQoUEFUSCkKIAogaWZuZXEgKCQoT1BFTldSVF9CVUlMRCksMSkKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvdG9wbGV2ZWwubWsgYi9pbmNsdWRlL3RvcGxldmVsLm1rCmluZGV4
IDEzM2RhOWQ4MzBiNS4uMTI1ODZlODdjMDlhIDEwMDY0NAotLS0gYS9pbmNsdWRlL3RvcGxldmVs
Lm1rCisrKyBiL2luY2x1ZGUvdG9wbGV2ZWwubWsKQEAgLTEwNSw3ICsxMDUsOSBAQCBzY3JpcHRz
L2NvbmZpZy9tY29uZjoKICQoZXZhbCAkKGNhbGwgcmRlcCxzY3JpcHRzL2NvbmZpZyxzY3JpcHRz
L2NvbmZpZy9tY29uZikpCiAKIHNjcmlwdHMvY29uZmlnL3Fjb25mOgotCUAkKF9TSU5HTEUpJChT
VUJNQUtFKSAtcyAtQyBzY3JpcHRzL2NvbmZpZyBxY29uZiBDQz0iJChIT1NUQ0NfV1JBUFBFUiki
CisJQCQoX1NJTkdMRSkkKFNVQk1BS0UpIC1zIC1DIHNjcmlwdHMvY29uZmlnIHFjb25mIFwKKwkJ
Q0M9IiQoSE9TVENDX1dSQVBQRVIpIiBcCisJCURJU1RSTy1QS0ctQ09ORklHPSIkKERJU1RST19Q
S0dfQ09ORklHKSIKIAogc2NyaXB0cy9jb25maWcvY29uZjoKIAlAJChfU0lOR0xFKSQoU1VCTUFL
RSkgLXMgLUMgc2NyaXB0cy9jb25maWcgY29uZiBDQz0iJChIT1NUQ0NfV1JBUFBFUikiCkBAIC0x
NTcsNiArMTU5LDEwIEBAIGVuZGlmCiBrZXJuZWxfb2xkY29uZmlnOiBwcmVwYXJlX2tlcm5lbF9j
b25mCiAJJChfU0lOR0xFKSQoTk9fVFJBQ0VfTUFLRSkgLUMgdGFyZ2V0L2xpbnV4IG9sZGNvbmZp
ZwogCitpZm5lcSAoJChESVNUUk9fUEtHX0NPTkZJRyksKQora2VybmVsX21lbnVjb25maWc6IGV4
cG9ydCBQQVRIOj0kKGRpciAkKERJU1RST19QS0dfQ09ORklHKSk6JChQQVRIKQora2VybmVsX25j
b25maWc6IGV4cG9ydCBQQVRIOj0kKGRpciAkKERJU1RST19QS0dfQ09ORklHKSk6JChQQVRIKQor
ZW5kaWYKIGtlcm5lbF9tZW51Y29uZmlnOiBwcmVwYXJlX2tlcm5lbF9jb25mCiAJJChfU0lOR0xF
KSQoTk9fVFJBQ0VfTUFLRSkgLUMgdGFyZ2V0L2xpbnV4IG1lbnVjb25maWcKIApkaWZmIC0tZ2l0
IGEvc2NyaXB0cy9jb25maWcvTWFrZWZpbGUgYi9zY3JpcHRzL2NvbmZpZy9NYWtlZmlsZQppbmRl
eCA4YmI2MmQyMzNjODYuLjhiNzhkNWE2ODI0NyAxMDA2NDQKLS0tIGEvc2NyaXB0cy9jb25maWcv
TWFrZWZpbGUKKysrIGIvc2NyaXB0cy9jb25maWcvTWFrZWZpbGUKQEAgLTIwLDggKzIwLDYgQEAg
Y2hlY2tfbHhkaWFsb2cgPSAkKHNoZWxsICQoU0hFTEwpICQoQ1VSRElSKS9seGRpYWxvZy9jaGVj
ay1seGRpYWxvZy5zaCAtJCgxKSkKIGV4cG9ydCBDRkxBR1MgKz0gLURLQlVJTERfTk9fTkxTIC1J
LiAkKGNhbGwgY2hlY2tfbHhkaWFsb2csY2NmbGFncykKIGV4cG9ydCBDWFhGTEFHUyArPSAtREtC
VUlMRF9OT19OTFMKIAotRElTVFJPLVBLRy1DT05GSUcgOj0gJChzaGVsbCB3aGljaCAtYSBwa2ct
Y29uZmlnIHwgZ3JlcCAtRSAnXC91c3InIHwgaGVhZCAtbiAxKQotCiBjb25mLW9ianMJOj0gY29u
Zi5vIHpjb25mLnRhYi5vCiBtY29uZi1vYmpzCTo9IG1jb25mLm8gemNvbmYudGFiLm8KIHFjb25m
LWN4eG9ianMJOj0gcWNvbmYubwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
