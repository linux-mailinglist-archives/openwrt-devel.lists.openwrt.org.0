Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC4F781DD
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 23:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=82yCpDizlOy47btH4/uhpyJmkx3HilP0hkyYj2iDqm0=; b=exALy5H75HmJXJ
	sKHGMVhLwdMEhpufjkJQ5CtiK4501A/1srT7D23WWWvFyu+8EWiaa/JPcll5LUBA9K0nmpCECQw0g
	CMhpiw0sovndKD5kYjhWJStDu36xAXZdsuf1P6+n5HX6pNzJKP0MCyIAXXzQdhl+x5AfIzA7T7PqF
	LRWOBjno8b+IHJMbAAivgWzYZXHVJfwcncSvaeYBbb1fab6p9P8JguVV5AY2oNiIV2+oI1R/xCyo/
	Miwwla/9mib12uWPGUbEqPt3xMtiRGBNMuCEjky014VCRqrba7XtVRiimeL3JDckjSTlupyHbHwe4
	6ujkw11DSLSs9lsVhrbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqlk-0001rg-Ar; Sun, 28 Jul 2019 21:31:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqlb-0001rN-7h
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 21:31:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 81B203EB8;
 Sun, 28 Jul 2019 23:31:38 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c90fa94a;
 Sun, 28 Jul 2019 23:31:31 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 28 Jul 2019 23:31:34 +0200
Message-Id: <20190728213134.4937-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_143143_579145_D4C91483 
X-CRM114-Status: UNSURE (   7.67  )
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
Subject: [OpenWrt-Devel] [PATCH] scons: move to packages feed
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

VGhpcyBwYXRjaCByZW1vdmVzIHNjb25zIGhvc3QgYnVpbGQgdG9vbCwgYXMgY29tbWl0IDBjMDkw
ZmRlNjhiMgooInNjb25zOiBtb3ZlIGhvc3QgYnVpbGQgdG9vbCB0byBhIHByb3BlciBwbGFjZSIp
IGluIHRoZSBwYWNrYWdlcyBmZWVkCmhhcyBtb3ZlZCBzY29ucyBpbnRvIHRoZSBuZXcgaG9tZS4K
ClRoZXJlIGFyZSBjdXJyZW50bHkgbm8gcGFja2FnZXMgaW4gdGhlIG1hc3RlciB0cmVlIHdoaWNo
IHdvdWxkIG5lZWQKc2NvbnMsIHlldCBzY29ucyBpcyBidWlsZCBhbHdheXMgYXMgcGFydCBvZiBo
b3N0IHRvb2xzLCBqdXN0IGluIG9yZGVyIHRvCnNhdGlzZnkgaG9zdCBidWlsZCBkZXBlbmRlbmN5
IG9mIGZldyBwYWNrYWdlcyBpbiB0aGUgcGFja2FnZXMgZmVlZHMuCgpTaWduZWQtb2ZmLWJ5OiBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRvb2xzL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAyICstCiB0b29scy9zY29ucy9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICAgfCAzNSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiB0b29scy9zY29ucy9m
aWxlcy9weXdyYXAuc2ggICAgICAgICAgICAgICAgfCAxNSAtLS0tLS0tLS0tCiB0b29scy9zY29u
cy9wYXRjaGVzLzAwMS1wbGF0Zm9ybV9lbnYucGF0Y2ggfCAxMSAtLS0tLS0tCiA0IGZpbGVzIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2MiBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0
NCB0b29scy9zY29ucy9NYWtlZmlsZQogZGVsZXRlIG1vZGUgMTAwNzU1IHRvb2xzL3Njb25zL2Zp
bGVzL3B5d3JhcC5zaAogZGVsZXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Njb25zL3BhdGNoZXMvMDAx
LXBsYXRmb3JtX2Vudi5wYXRjaAoKZGlmZiAtLWdpdCBhL3Rvb2xzL01ha2VmaWxlIGIvdG9vbHMv
TWFrZWZpbGUKaW5kZXggZDcyMDdiYTg5ZGQ5Li5hMTYxMTU0YjgwNmIgMTAwNjQ0Ci0tLSBhL3Rv
b2xzL01ha2VmaWxlCisrKyBiL3Rvb2xzL01ha2VmaWxlCkBAIC0yNSw3ICsyNSw3IEBAIHRvb2xz
LSQoQlVJTERfVE9PTENIQUlOKSArPSBnbXAgbXBmciBtcGMgbGliZWxmIGV4cGF0CiB0b29scy15
ICs9IG00IGxpYnRvb2wgYXV0b2NvbmYgYXV0b21ha2UgZmxleCBiaXNvbiBwa2ctY29uZmlnIG1r
bGlicyB6bGliCiB0b29scy15ICs9IHNzdHJpcCBtYWtlLWV4dDRmcyBlMmZzcHJvZ3MgbXRkLXV0
aWxzIG1raW1hZ2UKIHRvb2xzLXkgKz0gZmlybXdhcmUtdXRpbHMgcGF0Y2gtaW1hZ2UgcXVpbHQg
cGFkamZmczIKLXRvb2xzLXkgKz0gbW0tbWFjcm9zIG1pc3NpbmctbWFjcm9zIGNtYWtlIHNjb25z
IGJjIGZpbmR1dGlscyBnZW5nZXRvcHQgcGF0Y2hlbGYKK3Rvb2xzLXkgKz0gbW0tbWFjcm9zIG1p
c3NpbmctbWFjcm9zIGNtYWtlIGJjIGZpbmR1dGlscyBnZW5nZXRvcHQgcGF0Y2hlbGYKIHRvb2xz
LXkgKz0gbXRvb2xzIGRvc2ZzdG9vbHMgbGlicmVzc2wKIHRvb2xzLSQoQ09ORklHX1RBUkdFVF9v
cmlvbl9nZW5lcmljKSArPSB3cnQzNTBudjItYnVpbGRlciB1cHNsdWcyCiB0b29scy0kKENPTkZJ
R19UQVJHRVRfeDg2KSArPSBxZW11CmRpZmYgLS1naXQgYS90b29scy9zY29ucy9NYWtlZmlsZSBi
L3Rvb2xzL3Njb25zL01ha2VmaWxlCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCA1ZWM2
NTU0MTY1ODUuLjAwMDAwMDAwMDAwMAotLS0gYS90b29scy9zY29ucy9NYWtlZmlsZQorKysgL2Rl
di9udWxsCkBAIC0xLDM1ICswLDAgQEAKLSMKLSMgQ29weXJpZ2h0IChDKSAyMDExLTIwMTUgT3Bl
bldydC5vcmcKLSMKLSMgVGhpcyBpcyBmcmVlIHNvZnR3YXJlLCBsaWNlbnNlZCB1bmRlciB0aGUg
R05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdjIuCi0jIFNlZSAvTElDRU5TRSBmb3IgbW9yZSBp
bmZvcm1hdGlvbi4KLSMKLQotaW5jbHVkZSAkKFRPUERJUikvcnVsZXMubWsKLQotUEtHX05BTUU6
PXNjb25zCi1QS0dfVkVSU0lPTjo9My4wLjUKLQotUEtHX1NPVVJDRTo9JChQS0dfTkFNRSktJChQ
S0dfVkVSU0lPTikudGFyLmd6Ci1QS0dfU09VUkNFX1VSTDo9QFNGL3Njb25zIFwKLQkJaHR0cDov
L2Zvc3NpZXMub3JnL2xpbnV4L21pc2MvCi1QS0dfSEFTSDo9ZGY2NzZmMjNkYzZkNGJmYTM4NGZj
Mzg5ZDk1ZGNkMjFhYjkwN2U2MzQ5ZDRjODQ4OTU4YmE0YmVmYjczYzczZQotCi1pbmNsdWRlICQo
SU5DTFVERV9ESVIpL2hvc3QtYnVpbGQubWsKLQotZGVmaW5lIEhvc3QvQ29uZmlndXJlCi1lbmRl
ZgotCi1kZWZpbmUgSG9zdC9Db21waWxlCi1lbmRlZgotCi1kZWZpbmUgSG9zdC9JbnN0YWxsCi0J
Li9maWxlcy9weXdyYXAuc2ggJChIT1NUX0JVSUxEX0RJUikvc2V0dXAucHkgaW5zdGFsbCAtLXBy
ZWZpeD0kKFNUQUdJTkdfRElSX0hPU1QpCi0Jcm0gLWYgJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4v
c2NvbnMqLnB5Ci0JZm9yIGJpbiBpbiAkKFNUQUdJTkdfRElSX0hPU1QpL2Jpbi9zY29ucyo7IGRv
IFwKLQkJbXYgIiQkJCRiaW4iICIkJCQkYmluLnB5IjsgICAgICAgICAgICAgICAgXAotCQljcCAu
L2ZpbGVzL3B5d3JhcC5zaCAiJCQkJGJpbiI7ICAgICAgICAgICBcCi0JZG9uZQotZW5kZWYKLQot
JChldmFsICQoY2FsbCBIb3N0QnVpbGQpKQpkaWZmIC0tZ2l0IGEvdG9vbHMvc2NvbnMvZmlsZXMv
cHl3cmFwLnNoIGIvdG9vbHMvc2NvbnMvZmlsZXMvcHl3cmFwLnNoCmRlbGV0ZWQgZmlsZSBtb2Rl
IDEwMDc1NQppbmRleCA1MzkxMGU5NDcyMDkuLjAwMDAwMDAwMDAwMAotLS0gYS90b29scy9zY29u
cy9maWxlcy9weXdyYXAuc2gKKysrIC9kZXYvbnVsbApAQCAtMSwxNSArMCwwIEBACi0jIS91c3Iv
YmluL2VudiBiYXNoCi0KLWNhc2UgIiR7MCMjKi99IiBpbgotCXB5d3JhcC5zaCkgYXJnMT0iIjs7
Ci0JKikgYXJnMT0iJDAucHkiIDs7Ci1lc2FjCi0KLWZvciBiaW4gaW4gcHl0aG9uIHB5dGhvbjM7
IGRvCi0gICAgY2FzZSAiJCgkYmluIC1WIDI+JjEpIiBpbgotICAgICAgICAiUHl0aG9uIDMiKikg
ZXhlYyAkYmluICRhcmcxICIkQCIgOzsKLSAgICBlc2FjCi1kb25lCi0KLWVjaG8gIlVuYWJsZSB0
byBmaW5kIGEgUHl0aG9uIDMueCBpbnRlcnByZXRlciBmb3IgZXhlY3V0aW5nICR7YXJnMTorJGFy
ZzEgfSRAICEiID4mMgotZXhpdCAxCmRpZmYgLS1naXQgYS90b29scy9zY29ucy9wYXRjaGVzLzAw
MS1wbGF0Zm9ybV9lbnYucGF0Y2ggYi90b29scy9zY29ucy9wYXRjaGVzLzAwMS1wbGF0Zm9ybV9l
bnYucGF0Y2gKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDJiZTMxNDcwYzI3ZC4uMDAw
MDAwMDAwMDAwCi0tLSBhL3Rvb2xzL3Njb25zL3BhdGNoZXMvMDAxLXBsYXRmb3JtX2Vudi5wYXRj
aAorKysgL2Rldi9udWxsCkBAIC0xLDExICswLDAgQEAKLS0tLSBhL2VuZ2luZS9TQ29ucy9QbGF0
Zm9ybS9fX2luaXRfXy5weQotKysrIGIvZW5naW5lL1NDb25zL1BsYXRmb3JtL19faW5pdF9fLnB5
Ci1AQCAtNjUsNiArNjUsOCBAQCBkZWYgcGxhdGZvcm1fZGVmYXVsdCgpOgotICAgICBjYXJlIGFi
b3V0IHRoZSBtYWNoaW5lIGFyY2hpdGVjdHVyZS4KLSAgICAgIiIiCi0gICAgIG9zbmFtZSA9IG9z
Lm5hbWUKLSsgICAgaWYgJ1BMQVRGT1JNJyBpbiBvcy5lbnZpcm9uOgotKyAgICAgICAgcmV0dXJu
IG9zLmVudmlyb25bJ1BMQVRGT1JNJ10KLSAgICAgaWYgb3NuYW1lID09ICdqYXZhJzoKLSAgICAg
ICAgIG9zbmFtZSA9IG9zLl9vc1R5cGUKLSAgICAgaWYgb3NuYW1lID09ICdwb3NpeCc6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
